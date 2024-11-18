void setup()
{
  size(400, 400);
  noStroke();
}

void draw()
{
    float smoothness = 0.1;   // Try changing this number between 0 and 1.

  //background(255);
  fill(random(10, 80), random(50, 100), random(100, 150));

  float xPos = noise(frameCount*smoothness, 0)*width;
  float yPos = noise(frameCount*smoothness, 1)*height;
  circle(xPos, yPos, 50);
}
