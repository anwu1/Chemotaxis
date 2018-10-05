Bacteria [] wave = new Bacteria [1000];

void setup()   
{     
  size (1000, 1000);

  for (int i =0; i< wave.length; i++) {
    wave[i]= new Bacteria(500, 500);
  }
}   
void draw()   
{    
  background(0);
  for (int i =0; i< wave.length; i++) {

    wave[i].show();
    wave[i].randomWalk();
  }
}  

void mousePressed() {
    for (int i =0; i< wave.length; i++) {
    wave[i]= new Bacteria(500, 500);
  }
}   




  class Bacteria    
  {     
    int myX, myY, myBias;
    Bacteria (int x, int y) {
      myX=x;
      myY=y;
      myBias=5;
    }
    void randomWalk() {

      myX = myX+ (int)(Math.random()*11)-myBias;
      myY = myY+ (int)(Math.random()*11)-myBias;
    }
    void show() {
      if (myX<450) {
        fill(0, 250, 0);
      }
      if (myX>550) {
        fill(0, 0, 250);
      }
      if (myY> 550) {
        fill(250, 0, 0);
      }
      if (myY<450) {
        fill (250, 250, 0);
      }
      rect (myX, myY, 20, 20);
    }
  }