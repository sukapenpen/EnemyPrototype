class Appear {
  int x, y;
  color appear_c;
  int second_count = 0;
  int enemy_count = 0;
  Enemy enemys[] = new Enemy[10];
  
  Appear (int x, int y) {
    this.x = x;
    this.y = y;
    this.appear_c = color(255, 255, 255);
  }
  
  void Set () {
    MyselfSet();
    EnemySet();
  }
  
  void MyselfSet () {
    noStroke();
  }
  
  void EnemySet () {
    for (int i = 0; i < enemys.length; i ++) {
    color enemy_c;
    if (i % 3 == 0) {
      enemy_c = color (255, 0 ,0);
    } else if (i % 3 == 1) {
      enemy_c = color (0, 255 ,0);
    } else {
      enemy_c = color (0, 0, 255);
    }
      enemys[i] = new Enemy(this.x, this.y, 40, enemy_c);
    }
  }
  
  void Draw () {
    noStroke();
    fill (appear_c);
    ellipse(x, y, 20, 20);
  }
  
  void EnemyDraw () {
    second_count ++;
    for (int i = 0; i < enemys.length; i ++) {
      enemys[i].Draw();
    }
    if (second_count % 50 == 0 && enemy_count < enemys.length) {
      enemys[enemy_count].show = true;
      enemy_count ++;
    }
  }
}