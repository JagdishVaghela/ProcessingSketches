float xPos = random(150);
float yPos = random(250);

void setup()
{
  size (200, 300);
}

void draw()
{
  background(200);
  circle(xPos, yPos, 50);
  rectMode(CENTER);
  rect(xPos, yPos, 130, 20);
  changeColour();
}

void changeColour() {
  float position = dist(mouseX, mouseY, xPos, yPos);
  println(position);
  if (position < 50 && mousePressed) {
    fill(138, 58, 180);
  }
  else{
    fill(255);
  }
}
