  String [] mylose;
String currentlose;
int randomlose;
  PVector UL;
  PVector LL;
  PVector UR;
  PVector LR;
   PVector ul;
  PVector ll;
  PVector ur;
  PVector lr;
PImage youwin;
PImage consoles;
PImage gameover;
PImage umadbro;
Timer myTimer;
boolean state2 = false;
boolean state3 = false;
boolean state4 = false;

class Timer{
  float startTime, stopTime;
   boolean started = false;  
  Timer(float _stopTime){
    stopTime = _stopTime;
  }
  void timerStart(){
    startTime = millis();
    started = true;
  }
  
  void stopTimer(){
    started = false;
    println("time stopped");
  }
  boolean isFinished(){
    float passedTime = millis() - startTime;
    if((passedTime > stopTime) && (started)) {
      return true;
    } else {
      return false;
    }
  }
}
// the troll section of the code is just a class that keeps randomly placing the text and it is to distract the user
class troll{
  int centerx,centery;
  
  troll(){
    centerx = round(random(0, width));
    centery = round(random(0, height));
  }
  troll(int _centerx, int _centery){
    centerx = _centerx;
    centery = _centery;
  }
  void display(){
    textSize(32);
    text("Is this distracting",centerx,centery);
  }
  void move(){
    centerx = centerx + (round(random(-50,50)));
    centery = centery + (round(random(-50,50)));
  }
  troll mytroll;
}
troll mytroll;
class troll2{
  int centerx,centery;
  
  troll2(){
    centerx = round(random(0, width));
    centery = round(random(0, height));
  }
  troll2(int _centerx, int _centery){
    centerx = _centerx;
    centery = _centery;
  }
  void display(){
    textSize(32);
    text("I hope you aren't reading this",centerx,centery);
  }
  void move(){
    centerx = centerx + (round(random(-50,40)));
    centery = centery + (round(random(-50,40)));
  }
  troll2 mytroll2;
}
troll2 mytroll2;
// in the set up it basically is giving the parameters for the rectangles and it loads the images 
void setup(){
  size(800, 600);
  UL = new PVector(10, 150);
  UR = new PVector(200, 150);
  LL = new PVector(10, 450);
  LR = new PVector(200, 450);
  youwin = loadImage("youwin.jpg");
  ul = new PVector(600, 150);
  ur = new PVector(790, 150);
  ll = new PVector(600, 450);
  lr = new PVector(790, 450);
  gameover = loadImage("gameover.jpg");
  consoles = loadImage("consoles.jpg");
  umadbro = loadImage("umadbro.jpg");
  myTimer = new Timer(3000);
  myTimer.timerStart();
   mylose = new String [3];
  mylose[0] = "you lose";
  mylose[1] = "still lose try again";
  mylose[2] = "you can't win give up";
  randomlose = (round(random(mylose.length-1)));
  currentlose = mylose[randomlose];
  mytroll = new troll(200,200);
  mytroll2 = new troll2(300,300);
}

void draw(){
  // making the background the consoles image
 background(255);
 image(consoles,0,0,800,600);
 textSize(35);
 text("Pick which side you think will let you win",50,100);
 
 // now it draws the rectangles 
 rectMode(CORNERS);
 strokeWeight(0);
 rect(UL.x,UL.y, LR.x, LR.y);
 rectMode(CORNERS);
 strokeWeight(0);
 rect(ul.x,ul.y, lr.x, lr.y);
 
 // makes the mouse have a dot and it follows the mouse using mouse x and y 
 strokeWeight(50);
 fill(25,0,255);
 point(mouseX, mouseY);
 mytroll.move();
 mytroll.display();
 mytroll2.move();
 mytroll2.display();
 
 // now I have if statements saying if you put the mouse over this it will say you loose or you win 
 // and it gives the parameters for the collision to happen 
 if(mouseX > 600 && mouseX < 790 && mouseY > 150 && mouseY < 450 ){
  image(gameover,270,200,270,200);
 } else {
      fill(0);
      textSize(10);
   text("YOU WIN",10, 20);
    fill(255,0,0);
  }
 if(mouseX > 10 && mouseX < 200 && mouseY > 150 && mouseY < 450 ){
image(youwin,270,200,270,200);
 } else {
   fill(0);
   textSize(10);
   text("YOU LOSE", 600,20);
   fill(0);
 } 
 //After the timer has finished it will go to another state where it has text for you to read
 //Once you click the screen you will go to another state
 if(myTimer.isFinished()){
    state2 = true;
 }
 if(state2 == true){
   background(0);
   fill(255);
   textSize(50);
   text(currentlose,250,200);
   ellipse(400,400,150,150);
   textSize(13);
   fill(0);
   text("Click me to",360,400);
   text("win the game",360,420);
   if(mousePressed== true){
     state3 = true;
   }
 }
 if(state3 == true){
   background(255);
   fill(0);
   textSize(30);
   text("Wait did you actually press that", 50,100);
   text("That's just funny how you think you would",50,150);
   text("Win if you clicked it",50,200);
   text("Maybe try clicking a key and see if you win",50,300);
   if(keyPressed== true){
     state4 = true;
 }
 }
 //After you click a Key it will send you to the final state
if(state4 == true){
background(0);
fill(255);
text("Man it's to easy to fool you isn't it",50,100);
text("I think I have tortured you enough",50,150);
text("Thanks for playing",50,300);
text("I hope you enjoyed being trolled :)",50,350);
image(umadbro,200,400,200,200);
}
}
