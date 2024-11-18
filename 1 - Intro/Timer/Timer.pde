float second = frameCount/60;
float mins = 0;
float hour = 0;

void setup() {
  size (250, 200);
}

void draw() {
  if (seconds = 60) {
    seconds = 0;
    mins += 1;
    
  if (seconds = 60) {
    mins = 0;
    hour += 1;
    }
    println(second, mins, hour);
  }
