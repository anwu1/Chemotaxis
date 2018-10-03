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
  for (int i =0; i< wave.length; i++) {
    wave[i].show();
    wave[i].randomWalk();
  }
}  

void redraw(){
  
}

class Bacteria    
{     
  int myX, myY;
  Bacteria (int x, int y) {
    myX=x;
    myY=y;
  }
  void randomWalk() {
    myX = myX+ (int)(Math.random()*5)-5;
    myY = myY+ (int)(Math.random()*5)-5;
  }

  void show() {
    ellipse (myX, myY, 20, 20);
  }
}    
