PImage img;                 // -- Declare a new PImage called 'img', which is a better name for the PImage object
 
void setup() {
  size(1280, 890);
  img = loadImage("david-clode-l4A5E42LCDw-unsplash.jpg");    // -- You'll need to add the image to load here - something in your sketch folder ...
         // -- draws the content of the image on the canvas
}
 
void draw() {
  background(220,220,220);
  image(img, 0,0); 
  image(img, 640,0); 
  }
  
