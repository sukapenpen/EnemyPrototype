PFont myFont;
Appear machine;

void setup() {
  size(480, 480);
  background(255);
  fill(0, 0, 0);
  noStroke();
  myFont = createFont("MS Gothic", 24, true);
  textFont(myFont);
  machine = new Appear(240, 30);
  machine.Set ();
}


void draw () {
  background(255);
  machine.Draw();
  machine.EnemyDraw ();
}

void mousePressed () {
  machine.appear_c = color(0, 0, 0);
}

void mouseReleased () {
  machine.appear_c = color(255, 255, 255);
}