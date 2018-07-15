import java.util.*;

class Enemy {
  int hp;
  float x, y, size;
  int time = 0;
  String str;
  color c;
  boolean show = false;
  List<Bullet> bullet;
  
  Enemy (float x, float y, float size, color c, String str) {
    this.x = x;
    this.y = y;
    this.size = size;
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
      fill(c);
      ellipse(x, y, size, size);
      switch (this.str) {
        case "move":
          move();
      }
      shot();
    }
    for (int i = 0; i < bullet.size(); i++) {
      if (bullet.get(i).show) {
          bullet.get(i).draw();
      }
    }
  }
  
  void move () {
    this.y ++;
  }
  
  void shot () {
    time ++;
    if (time % 90 == 0) {
      for (int i = 0; i < bullet.size(); i++) {
        if (!bullet.get(i).show) {
          bullet.get(i).display(x, y);
          break;
        }
      }
    }
  }
}
