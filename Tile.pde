class Tile {
  Tile[] connections;
  int[] cdirs;
  TileData data;
  Tile() {
    data=new TileData();
  }
  Tile(TileData d) {
    data=d;
  }
  
  void polys(){
    return ;
  }
}

class TileData{}