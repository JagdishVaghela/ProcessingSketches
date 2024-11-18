float angle;
 
void setup()
{
  size(640, 480, P3D);
}
 
void draw()
{
  background(252,239,232);
  noFill();
  stroke(147,86,55);
  translate(width/2, height/2, 0);  // Centre the view.
 
  // Transform the first sphere to the right.
  pushMatrix();                // Store the current transformation settings.
    translate(150, 0, 0);      // Shift it right
    rotateY(radians(angle));   // Rotate about its centre
    scale(1, 2, 1);            // Stretch it on along the y-axis
    sphere(100);               // Draw the first sphere.
  popMatrix();                 // Restore the previous transformation settings.
 
  // Transform the second sphere to the left.
  pushMatrix();                // Store the current transformation settings.
    translate(-130, 0, 0);     // Shift it left
    rotateX(radians(angle));   // Rotate vertically about its centre
    scale(1, 2, 1);            // Stretch it on along the y-axis
    sphere(100);               // Draw the second sphere.
  popMatrix();                 // Restore the previous transformation settings.
 
  angle = angle + 1;           // Increase angle by 1 degree on every redraw.
}
