//void setup()
//{
//  size(400, 300);
//  fill(203, 118, 122);
//}

//void draw()
//{
//  background(255, 236, 149);

//  if (mousePressed)
//  {
//    ellipse(mouseX, mouseY, 80, 80);
//  }
//  else
//  {
//    rectMode(CENTER);
//    rect(mouseX, mouseY, 80, 80);
//  }
//}


//float xPos;     // Position of text along x-axis
//float vx;       // Speed of text in x-direction
//String message; // The message

//void setup()
//{
//  size(600, 100);
//  fill(255, 177, 8);
//  textSize(48);

//  xPos = width;  // Initialise xPos to right of sketch
//  vx = -2;       // Set speed in x-direction to -2 (moving left)
//  message = "The next station is Farringdon...";
//}

//void draw()
//{
//  background(64);
//   xPos = xPos + vx;  // Change x-position on each redraw
//   text(message, xPos, (height/2) + 20);

//  if (xPos == -width) {
//     xPos = width;
//  }
//}

//void setup()
//{
//  size(400, 300);
//}

//void draw()
//{
//  background(18, 48, 193);

//  if (mouseY < height/2)
//  {
//    if (mouseX < width/2)
//    {
//      fill(250, 207, 35);  // colour for sun
//    }
//    else
//    {
//      fill(255, 255, 255);  // colour for moon
//    }
//    ellipse(mouseX, mouseY, 80, 80);
//  }
//  else
//  {

//    if (mouseX < width/2)
//    {
//      fill(250, 207, 35);  // colour for sun
//    }
//    else
//    {
//      fill(255, 255, 255);  // colour for moon
//    }
//    rect(mouseX, mouseY, 80, 80);
//  }
//}

//float randomNumber;

//void setup()
//{
//  size(200, 200);
//  fill(0);
//  textSize(48);
//  textAlign(CENTER);

//  // Initialise randomNumber between 0 and 2
//  randomNumber = random(2);
//}

//void draw()
//{
//  background(230, 255, 230);
//    String message;

//  if (randomNumber<1){
//    message = "TAILS";
//    text(message, width/2, height/2);
//  }
//  else{
//    message = "HEADS";
//    text(message, width/2, height/2);
//  }


//}

float ran;

void setup()
{
  size(200, 200);
  fill(0);
  textSize(48);
  textAlign(CENTER);

  ran = random(6);
}

void draw()
{
  background(255);
  String message="";
  if (ran < 1)
  {
    message = "ONE";
  } else if (ran < 2)
  {
    message = "TWO";
  } else if (ran < 3)
  {
    message = "THREE";
  } else if (ran < 4)
  {
    message = "FOUR";
  } else if (ran < 5)
  {
    message = "FIVE";
  } else
  {
    message = "SIX";
  }
text(message, width/2, height/2);
}
