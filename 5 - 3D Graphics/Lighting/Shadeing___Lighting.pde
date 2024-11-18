int option;
 
void setup()
{
  size(400,400, P3D);
  noStroke();
  fill(255, 0, 0);
}
 
void draw()
{
  background(255);
 
  if (option == 1)
  {
     lights();      // Lights on
  }
  else if (option == 2)
  {
     // Custom lighting
     lightSpecular(200, 200, 200);
     specular(255, 255, 255);
     shininess(25);
     float hw = width /2;
     float hh = height /2;
     directionalLight(255, 255, 255, -(mouseX-hw)/hw, -(mouseY-hh)/hh, -1);
  }
  translate(width/2, height/2, 0);
  sphere(150);
}
void mouseClicked()
{
  option++;
  if (option > 2)
  {
    option = 0;
  }
}
