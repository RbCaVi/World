class Button {
  float x;
  float y;
  float width;
  float height;
  boolean pressed;
  Button(float x, float y, float w, float h) {
    this.x=x;
    this.y=y;
    this.width=w;
    this.height=h;
  }

  boolean isClicked(float mx, float my) {
    if (mx<x) {
      return false;
    }
    if (my<y) {
      return false;
    }
    if (mx>x+width) {
      return false;
    }
    if (my>y+height) {
      return false;
    }
    return true;
  }

  void update () {
    pressed=false;
    for (int i=0; i<touches.length; i++) {
      pressed=pressed||isClicked(touches[i].x, touches[i].y);
    }
  }
  
  void draw(color off, color on) {
    if (pressed) {
      fill(on);
    } else {
      fill(off);
    }
    rect(x, y, width, height);
  }

  void draw(color c) {
    fill(c);
    rect(x, y, width, height);
  }

  void draw() {
    rect(x, y, width, height);
  }
}

class PressButton extends Button {
  private boolean lastClicked;
  private boolean clicked;

  PressButton(float x, float y, float w, float h) {
    super(x, y, w, h);
    this.x=x;
    this.y=y;
    this.width=w;
    this.height=h;
  }

  void update () {
    lastClicked=clicked;
    clicked=false;
    for (int i=0; i<touches.length; i++) {
      clicked=clicked||isClicked(touches[i].x, touches[i].y);
    }
    pressed=(!lastClicked)&&clicked;
  }

  void draw(color off, color on) {
    if (clicked) {
      fill(on);
    } else {
      fill(off);
    }
    rect(x, y, width, height);
  }
}
