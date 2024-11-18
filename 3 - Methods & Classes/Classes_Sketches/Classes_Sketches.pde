//PVector screenPos;  // Stores a screen position.

//void setup()
//{
//  size(400,400);
//  stroke(150,74,50);
//  fill(150,74,50);
//  strokeWeight(6);
//  screenPos = new PVector(width/2,height/2);
//}

//void draw()
//{
//  background(243,142,45);
//  circle(screenPos.x,screenPos.y,12);
//  line(screenPos.x,screenPos.y,mouseX,mouseY);
//}

//void mousePressed()
//{
//  screenPos.x = mouseX;
//  screenPos.y = mouseY;
//}
boolean drawCircle = true;
PVector p;
ArrayList<PVector> clickPoint = new ArrayList <PVector>();

void setup() {
  size(800, 800);
  noStroke();
  p = new PVector(mouseX, mouseY);
}

void draw() {
  fill(255, 8);
  rect(0, 0, width, height);

  p.x = mouseX;
  p.y = mouseY;
  
  fill(160,34,34);
  beginShape();
  for (PVector v : clickPoint) {
    vertex(v.x,v.y);
  }

  endShape(CLOSE);

  if (drawCircle) {
    fill(32, 120);
    circle(mouseX, mouseY, 12);
  }

  drawCircle = false;
}

void mouseClicked() {
  clickPoint.add(new PVector(mouseX,mouseY));
}

void mouseMoved() {
  drawCircle = true;
}
