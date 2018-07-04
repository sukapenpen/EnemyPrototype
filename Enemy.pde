class Enemy {
  int hp;
  int x, y, size;
  color c;
  boolean show = false;
  
  Enemy (int x, int y, int size, color c) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.c = c;
  }
  
  void Draw () {
    noStroke();
    if (show == true) {
      fill(c);
      ellipse(x, y, size, size);
      Move();
    }
  }
  
  void Move () {
    this.y ++;
  }
  
}