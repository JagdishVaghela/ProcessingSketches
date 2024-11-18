void setup()
{
  size(600,500,P3D);
}
 
void draw()
{
  background(0);
  translate(width/2, height/2, 190);
 
  rotateX(radians(-mouseY-height/2));
  rotateY(radians(mouseX-width/2));
 
  beginShape(TRIANGLES);
 
    fill(255,0,0);
    vertex(0, 0, 100);
    fill(0,0,255);
    vertex(-100, 100, 0);
    vertex(100, 100, 0);
 
    fill(255,0,0);
    vertex(0, 0, 100);
    fill(0,0,255);
    vertex(100, 100, 0);
    vertex(0, -100, 0);
 
    fill(255,0,0);
    vertex(0, 0, 100);
    fill(0,0,255);
    vertex(0, -100, 0);
    vertex(-100, 100, 0);
 
    vertex(-100, 100, 0);
    vertex(100, 100, 0);
    vertex(0, -100, 0);
 
  endShape();
}
