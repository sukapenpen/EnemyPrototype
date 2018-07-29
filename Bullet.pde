class Bullet {
  float x, y, speed;
  int power;
  boolean show = false;
  final float pool_x = 750, pool_y = 650;

  Bullet (float x, float y, float speed, int power) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.power = power;
  }
  
  Bullet (float speed, int power) {
    this.x = pool_x;
    this.y = pool_y;
    this.speed = speed;
    this.power = power;
  }
  
  void draw () {
    if (show) {
      fill(128, 128, 128);
      ellipse(x, y, 10, 30);
    }
    forward();
  }
  
  void display (float enemy_x, float enemy_y) {
    show = true;
    x = enemy_x;
    y = enemy_y;
  }
  
  void forward () {
    if (show) {
      y += speed;
    }
  }
}
