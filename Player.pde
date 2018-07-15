class Player {
  int hp;
  float x, y, size, speed;
  color c;
  boolean right = false, left = false;
  
  Player (int hp, float x, float y, float size, float speed, color c) {
    this.hp = hp;
    this.x = x;
    this.y = y;
    this.size = size;
    this.speed = speed;
    this.c = c;
  }
  
  void draw () {
    fill(c);
    rect(x - size / 2, y - size / 2, size, size);
    move();
  }
  
  void move () {
    if (right) {
      x ++;
    }
    if (left) {
      x --;
    }
  }
  
  void collisionCheck () {
    
  }
}
