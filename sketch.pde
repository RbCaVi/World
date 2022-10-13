Button b;


void setup() {
  b=new PressButton(10, 10, 200, 200);
}

void draw() {
  if (touchIsStarted) {
    background(150);
  } else {
    background(255);
  }
  b.update();
  b.draw(0, 128);
}
