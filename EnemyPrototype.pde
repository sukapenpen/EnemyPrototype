PFont myFont;
Field frame;
Appear machine;
Player player;

public static final int f_width = 400, f_height = 500;

//ウィンドウは800*700だが
//400*500を想定
//x=200,y=100を左上基準に生成
//敵生成器はx=400,y=0の位置に生成

void setup() {
  size(800, 700);
  background(255);
  fill(0, 0, 0);
  stroke(0);
  myFont = createFont("MS Gothic", 24, true);
  textFont(myFont);
  frame = new Field();
  machine = new Appear(width / 2, 0);
  player = new Player(10, width / 2, 550, 30, 5.0, color (0));
  machine.appearSet ();
}

void draw () {
  background(255);
  frame.stage();
  machine.draw();
  machine.enemyDraw ();
  player.draw();
}

void mousePressed () {
  machine.appear_c = color(0, 0, 0);
}

void mouseReleased () {
  machine.appear_c = color(255, 255, 255);
}

void keyPressed () {
  if (keyCode == RIGHT) {
    player.right = true;
  }
  if (keyCode == LEFT) {
    player.left = true;
  }
}

void keyReleased () {
  if (keyCode == RIGHT) {
    player.right = false;
  }
  if (keyCode == LEFT) {
    player.left = false;
  }
}
