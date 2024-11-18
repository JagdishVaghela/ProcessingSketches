PImage image;
 
void setup()
{
  size(640, 480, P3D);
  image = loadImage("https://gicentre.github.io/data/images/lovelace.jpg");
}
 
void draw()
{
  background(255);
  stroke(255);
  translate(width/2, height/2, -200);
 
  rotateY(radians(mouseX));
  int  d = 16;                 // spacing of vertices
  float s = 0.003;
  float t = millis() / 5000.0; // Deformation rate
  float w = width;
  float h = height;
 
  for (int x = 0; x < width; x += d)
  {
    for (int y = 0; y < height; y += d)
    {
      float z1 = (noise(x*s,y*s,t) - 0.5) * w;
      float z2 = (noise((x+d)*s,y*s,t) - 0.5) * w;
      float z3 = (noise((x+d)*s,(y+d)*s,t) - 0.5) * w;
      float z4 = (noise(x*s,(y+d)*s,t) - 0.5) * w;
 
      beginShape(QUADS);
        textureMode(NORMAL);
        texture(image);
        vertex(x-w/2,   y-h/2,   z1, x/w,      y/h);
        vertex(x+d-w/2, y-h/2,   z2, (x+d)/w,  y/h);
        vertex(x+d-w/2, y+d-h/2, z3, (x+d)/w, (y+d)/h);
        vertex(x-w/2,   y+d-h/2, z4, x/w,     (y+d)/h);
      endShape();
    }
  }
}
