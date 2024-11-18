void setup() {
  size(500, 500);
}


void draw() {
  drawSmileyFace(250, 250, 100);
  drawSmileyFace(150, 150, 100);
  drawSmileyFace(350, 350, 100);
  drawSmileyFace(150, 350, 100);
  drawSmileyFace(350, 150, 100);
}

void drawSmileyFace(int x, int y, int r) {
  fill(233, 255, 5);
  circle(x, y, r);
  fill(0);
  circle(x + (r/5), y - (r/6), r/10);
  circle(x - (r/5), y - (r/6), r/10);
  strokeWeight(10);
  noFill();
  line(x - (r/4), y + (r/10), x + (r/4), y + (r/10));
}
