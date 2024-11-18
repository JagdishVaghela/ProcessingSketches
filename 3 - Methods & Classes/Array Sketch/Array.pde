//float[] diameters;            // -- Declare 'diameters' as an array of floats

//void setup()
//{
//  size(400,600);
//  fill(200,50,50,100);
//  noStroke();

//  diameters = new float[5];  // -- Set the array size to 5 using the 'new' syntax
//  diameters[0] = 80;         // -- Initialise the 5 values in elements 0, 1, 2, 3, and 4
//  diameters[1] = 50;
//  diameters[2] = 60;
//  diameters[3] = 36;
//  diameters[4] = 10;
//}

//void draw()
//{
//  background(220);
//  float xPos = 50;

//  for (int i=0; i<5; i = i+1)
//  {
//    circle(100,xPos,diameters[i]);
//    xPos = xPos * 1.8;
//  }
//}



//float[] diameters;            // -- Declare the array of floats

//void setup()
//{
//  size(1000,200);
//  fill(180,50,50,20);
//  noStroke();

//  diameters = new float[50];
//  for (int i=0; i<diameters.length; i=i+1)
//  {
//    diameters[i] = random(1,60);    // -- Each diameter is a random number between 1 and 50.
//  }
//}

//void draw()
//{
//  background(255);
//  float xPos = 0;
//  randomSeed(64864);

//  for (float diameter : diameters)
//  {
//    circle(xPos,100,diameter);
//    xPos = xPos + 20;
//  }
//}

//ArrayList <String> names = new ArrayList();

//void setup()
//{
//  size(300, 400);
//  fill(0);
//  textSize(22);

//  names.add("Giacomo");
//  names.add("Jason");
//  names.add("Golnaz");
//  names.add("Aravin");
//  names.add("Olga");
//  names.add("Kam");
//  names.add("Charlie");
//  names.add("Charlie");
//  names.add("Ross");
//  names.add("Jo");
//  names.add("Cristina");
//  names.add("Aidan");
//}


//void draw()
//{
//  background(220);
//  float ypos = 30;

//  for (String name : names)
//  {
//    text(name,50,ypos);
//    ypos += 30;
//  names.add("Charlie");}
//}

float[][] diameters;      // Declare a 2D array of floats

void setup()
{
  size(800, 800);
  fill(100, 190, 240);
  noStroke();

  diameters = new float[100][100];
  for (int row=0; row<100; row=row+1)
  {
    for (int col=0; col<100; col=col+1)
    {
      diameters[row][col] = random(1, 10);
    }
  }
}

void draw()
{
  background(255);
  randomSeed(235);
  for (int row=0; row<100; row = row+1)
  {
    for (int col=0; col<100; col = col+1)
    {
      fill(random(0, 255), random(0, 255), random(0, 255));
      circle(col*8, row*8, diameters[row][col]);
    }
  }
}
