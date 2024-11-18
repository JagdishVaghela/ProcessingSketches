//void setup()
//{
//  size(600, 500, P3D);
//}
//void draw()
//{
//  background(0);
//  translate(width/2, height/2, 0);
//  sphere(200);

//  noLoop();  // As sketch doesn't change, no need to repeat drawing loop.
//}

void setup()
{
  size(600, 500, P3D);
}
void draw()
{
  background(0);
  //noFill();
  stroke(255, 100, 100);
  translate(width/2, height/2, 0);
  //scale(0.5, 1, 0.5);
  float angleValue = radians(mouseX);
  rotateY(angleValue);

  float angleValue1 = radians(mouseY);
  rotateZ(angleValue1);

  sphere(200);
}
