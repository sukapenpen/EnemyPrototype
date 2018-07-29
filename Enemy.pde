import java.util.*;

class Enemy {
  int hp;
  float x, y, size;
  int time = 0;
  int interval = 45;
  String str;
  color c;
  boolean show = false;
  float speed;
  List<Bullet> bullet;
  
  Enemy (float x, float y, float size, float speed,  color c, String str) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.speed = speed;
    this.c = c;
    this.str = str;
  }
  
  void bulletSet () {
    bullet = new ArrayList<Bullet>();
    for (int i = 0; i < 100; i ++) {
      bullet.add(new Bullet(2.0, 1));
    }
  }
  
  void draw () {
    noStroke();
    if (show) {
      time ++;
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
          break;
      }
      shot();
    } else {
      time = 0;
    }
    for (int i = 0; i < bullet.size(); i++) {
      if (bullet.get(i).show) {
          bullet.get(i).draw();
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
  
  void shot () {
    if (time % interval == 0) {
      for (int i = 0; i < bullet.size(); i++) {
        if (!bullet.get(i).show) {
          bullet.get(i).display(x, y);
          break;
        }
      }
    }
  }
}
