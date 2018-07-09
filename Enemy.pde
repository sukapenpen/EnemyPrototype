class Enemy {
  int hp;
  float x, y, size;
  String str;
  color c;
  boolean show = false;
  float speed;
  
  Enemy (float x, float y, float size, float speed,  color c, String str) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.speed = speed;
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
          break;
        
        case "quadratic":
          quadratic(0, 0, 400, 350);
          break;
      }
    }
  }
  
  void move () {
    y += speed;
    
  }
  
  //二次関数
  //引数は通過するxy座標と頂点のxy座標
  void quadratic (float passing_x, float passing_y, float max_x, float max_y) {
    float a = passing_y - max_y / sq(passing_x - max_x);
    x += speed * 3;
    y = a * sq(x - max_x) + max_y;
  }
}