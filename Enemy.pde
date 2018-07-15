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
          left_quadratic(0, 0, 600 - size / 2, 350);
          break;
        
        case "right_quadratic":
          right_quadratic(800, 0, 200, 350);
      }
    }
  }
  
  void move () {
    y += speed;
    
  }
  
  //二次関数
  //引数は通過するxy座標と頂点のxy座標
  void left_quadratic (float passing_x, float passing_y, float max_x, float max_y) {
    float a = passing_x - max_x / sq(passing_y - max_y);
    y += speed * 3;
    x = a * sq(y - max_y) + max_x;
  }
  
  void right_quadratic (float passing_x, float passing_y, float max_x, float max_y) {
    float a = passing_x - max_x / sq(passing_y - max_y);
    println(x + " " + y + "aは" + a);
    y += speed * 3;
    x = sq(y - max_y) / a + max_x;
  }
}
