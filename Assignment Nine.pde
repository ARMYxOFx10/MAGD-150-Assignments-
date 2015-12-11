String [] myThanksgiving;
String currentThanksgiving;
int randomThanksgiving;
PImage happy;
PImage Peanut;

//Spawns the corn and lets it move and offsets it by 10 each time
class corn{
  int centerx,centery,offset1,offset2;
  
  corn(){
    centerx = round(random(0, width));
    centery = round(random(0, height));
    offset1 = 10;
    offset2 = 10;
  }
  corn(int _centerx, int _centery, int _offset1, int _offset2){
    centerx = _centerx;
    centery = _centery;
    offset1 = _offset1;
    offset2 = _offset2;
  }
  void display(){
    fill(220,255,0);
    rect(centerx,centery,offset1,offset2,10);
  }
  void move(){
    centerx = centerx + (round(random(-50,50)));
    centery = centery + (round(random(-50,50)));
  }
  corn mycorn;
}
corn mycorn;

//Spawns the bread and offsets it by 10 
class bread{
  int centerX,centerY,offset3,offset4;

bread(){
  centerX = round(random(0, width));
  centerY = round(random(0, height));
  offset3 = 10;
  offset4 = 10;
}
bread(int _centerX, int _centerY, int _offset3, int _offset4){
  centerX = _centerX;
  centerY = _centerY;
  offset3 = _offset3;
  offset4 = _offset4;
}
void display(){
  fill(147,114,70);
  rect(centerX,centerY,offset3,offset4,10);
 
}
void move(){
  centerX = centerX + (round(random(-50,50)));
  centerY = centerY + (round(random(-50,50)));
}
bread mybread;
}
bread mybread;
  
  //Spawns the picture and has a array also to pick a random number to spawn a certain text
void setup(){
  size(800,600);
  myThanksgiving = new String [3];
  myThanksgiving[0] = "great";
  myThanksgiving[1] = "happy";
  myThanksgiving[2] = "amazing";
  randomThanksgiving = (round(random(myThanksgiving.length-1)));
  currentThanksgiving = myThanksgiving[randomThanksgiving];
happy = loadImage("happy.jpg");
Peanut = loadImage("Peanut.jpg");
mycorn = new corn(200,100,20,35);
mybread = new bread(300,200,50,65);
}
//This displays the corn and bread and moves it
void draw(){
  background(123);
  image(happy,0,0,300,300);
  image(Peanut,500,300,300,300);
  mycorn.move();
  mycorn.display();
  mybread.move();
  mybread.display();
  fill(113,60,3);
  textSize(25);
  text("Have " + "a " + currentThanksgiving + " Thanksgiving" , 300,200);
}
