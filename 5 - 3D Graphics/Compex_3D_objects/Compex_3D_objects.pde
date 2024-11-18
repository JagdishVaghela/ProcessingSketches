PShape heart;  // Stores the complex geometry.
float angle;

public void setup()
{
  size(500, 500, P3D);
  heart = loadShape("HumanHeart_OBJ.obj");    // Load .obj file.
}

public void draw()
{
  background(255);
  lights();

  // Viewing transformation.
  translate(width/2, height/2);
  scale(10, 10, 10);
  lights();
  // Draws the .obj feature.
  shape(heart);
}
