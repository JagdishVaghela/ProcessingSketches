PImage img;
 
void setup()
{
  size(500, 500, P3D);
  img = loadImage("https://gicentre.github.io/data/images/lovelace.jpg");
}
 
void draw()
{
  background(255);
  int s = 8;    // Sample rate of pixels (s=8 -> 1 in 8 pixels shown)
 
  // Centre view on image
  translate((width-img.width)/2,(height-img.height)/2,0);
  rotateY(radians(45));
 
  for (int y = 0; y < img.height; y+= s)
  {
    for (int x = 0; x < img.width; x+= s)
    {
      color pixelColour = img.get(x, y);
      fill(pixelColour);
 
      pushMatrix();
        float f = map(mouseX,0,height,-5,5);
        float a = brightness(pixelColour);
        translate(x, y, f*a);
        //rotateY(a*radians(millis()/500.0));
        box((int) (s*0.75));
      popMatrix();
    }
  }
}
