//Sets up the lazer and gives the frame rate
boolean laser = false;
void setup(){
  size(800,600);
  frameRate(15);
}
//moves to lazers
void draw(){
  background(255,0,0);
if (laser == false){
  background(0);
  fill(7,235,245);
  rect(mouseX,mouseY,10,100,200);
  fill(113,118,118);
  rect(mouseX,mouseY+90,10,20,200);
  drawRandomRect();
}else{
  textSaysGameOver();
}
}
//mousePressed changed to a different state 
void mousePressed(){
  laser = !laser;
  println("change");
}

void drawRandomRect(){
fill(94,255,3);
  float a = random(0, width);
  float b = random(0, width);
  float c = 100;
  float d = 10;
  float e = 200;
  rect(a,b,c,d,e);
}

void textSaysGameOver(){
  float a = random(0,height);
  float b = random(0,height);
  textSize(100);
  text("GAME OVER",a,b);
}
