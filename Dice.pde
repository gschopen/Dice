dice j;
int counter;
boolean pressed = false;
void setup()
{
  size(500, 500);
  textSize(17);
  textAlign(CENTER,CENTER);
  noLoop();
//  background(0);
}
void draw()
{
  if(pressed == true)
 for(int z = 25; z < 500; z = z + 100){
   for(int t = 25; t < 500; t = t + 100){
     j = new dice(t,z);
     if(j.di == 1)
counter = counter + 1;
else if(j.di == 2)
counter = counter + 2;
else if(j.di == 3)
counter = counter + 3;
else if(j.di == 4)
counter = counter + 4;
else if(j.di == 5)
counter = counter + 5;
else if(j.di == 6)
counter = counter + 6;
     j.show();
     
   }
}
System.out.println(counter);
rect(400,400,100,100);
fill(0,0,0);

text("total = " + counter, 250,400,400,100);
counter = 0;
pressed = false;

}
void mousePressed()
{
  pressed = true;
 redraw();
 
}
class dice
{
  //three member variables
  int di;
  int myX, myY;

  //three member functions
  dice(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    int rand = ((int)(Math.random() * 6)+1); 
    if(rand == 1){
      di = 1;}
    else if(rand == 2){
      di = 2;}
    else if(rand == 3){
      di = 3;}
    else if(rand == 4){
      di = 4;}
    else if(rand == 5){
      di = 5;}
    else {
      di = 6;}
      
      
  }
  void show()
  {
    noStroke();
    fill(225,0,50);
    rect(myX,myY,50,50,12);
    fill(225,225,225);
    if(di == 1){
    ellipse(myX+25,myY+25,7,7);
    }
    if(di == 2){
    ellipse(myX+10,myY+10,7,7);
    ellipse(myX+40,myY+40,7,7);}
    else if(di == 3){
    ellipse(myX+10,myY+40,7,7);
    ellipse(myX+25,myY+25,7,7);
    ellipse(myX+40,myY+10,7,7);}
    else if(di == 4){
    ellipse(myX+10,myY+40,7,7);
    ellipse(myX+40,myY+10,7,7);
    ellipse(myX+10,myY+10,7,7);
    ellipse(myX+40,myY+40,7,7);}
    else if(di == 5){
        ellipse(myX+10,myY+40,7,7);
    ellipse(myX+40,myY+10,7,7);
    ellipse(myX+10,myY+10,7,7);
    ellipse(myX+40,myY+40,7,7);
    ellipse(myX+25,myY+25,7,7);   
    }
    else if(di == 6){
   for(int g = 10; g < 50; g = g + 15){
   for(int w = 12; w < 50; w = w + 26){
   ellipse(myX+w,myY+g,7,7);
    }
    }
    
  }
}
}
