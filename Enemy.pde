class Enemy {
  int hp;
  int x, y, size;
  String str;
  color c;
  boolean show = false;
  
  Enemy (int x, int y, int size, color c, String str) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.c = c;
    this.str = str;
  }
  
  void draw () {
    noStroke();
    if (show == true) {
      fill(c);
      ellipse(x, y, size, size);
      switch (this.str) {
        case "move":
          move();
      }
    }
  }
  
  void move () {
    this.y ++;
  }
}