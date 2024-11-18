// Sketch to draw a rectangle that follows the mouse.
void setup()
{
    size(1000, 600);
    fill(203, 118, 122);
    textSize(37);
}
 
void draw()
{
  background(255, 236, 149); 
  fill(220, 0, 0);
  circle(mouseX, mouseY, 250);
  fill(255, 255, 255);
  circle(mouseX, mouseY, 160);
  fill(24, 22, 237);
  rect(mouseX - 150, mouseY - 30, 300, 60);
  fill(255,255,255);
  text("UNDERGROUND",mouseX - 125, mouseY + 16);
  
}
