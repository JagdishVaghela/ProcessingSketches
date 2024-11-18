PImage img;
 
void setup() {
  size(640, 890);
  img = loadImage("david-clode-l4A5E42LCDw-unsplash.jpg");  // <-- image does not change during the sketch and so can be drawn in the setup() method
  image(img, 0, 0);
  filter(INVERT);
  filter(BLUR, 100);
}
