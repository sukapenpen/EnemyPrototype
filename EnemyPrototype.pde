PFont myFont;
Appear machine;

int f_width = 400, f_height = 500;

//ウィンドウは800*700だが
//400*500を想定
void setup() {
  size(800, 700);
  background(255);
  fill(0, 0, 0);
  stroke(0);
  myFont = createFont("MS Gothic", 24, true);
  textFont(myFont);
  machine = new Appear(width / 2, 0);
  machine.Set ();
}


void draw () {
  background(255);
  Field();
  machine.Draw();
  machine.EnemyDraw ();
}

void Field () {
  noFill();
  stroke(0);
  rect(200, 100, f_width, f_height);
}

void mousePressed () {
  machine.appear_c = color(0, 0, 0);
}

void mouseReleased () {
  machine.appear_c = color(255, 255, 255);
}