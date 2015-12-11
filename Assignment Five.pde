float a = 145;
float b = 155;
float c = 150;
float velocityY = 0.0;
float gravity = .05;
float posX = 150;
int posY = 400;

void setup(){
 size(800, 600);
 fill(14,155,8);
 noStroke();
 rect(0,300,800,600);
}
//This draws the stick figure to kick the ball
void draw(){
  background(82,227,218);
   fill(14,155,8);
 noStroke();
 rect(0,300,800,600);
 stroke(0);
 line(700,600,700,450);
 line(650,400,750,500);
 line(650,400,650,300);
 line(750,500,750,300);
 fill(255,223,157);
 line(mouseX,250,mouseX,350);
 ellipse(mouseX,250,50,50);
 line(mouseX,300,mouseX+15,350);
 line(mouseX,300,mouseX-15,350);
 line(mouseX,350,mouseX+15,400);
 line(mouseX,350,mouseX-15,400);
 update();
}
//this updates the ball and lets the football move horizontally
void update(){
fill(139,56,7);
stroke(0);
arc(posX, posY, 20, 50, 0, PI+PI);
stroke(255,255,255);

line(a,410,b,410);
line(a,405,b,405);
line(a,400,b,400);
line(a,395,b,395);
line(a,390,b,390);
line(c,415,c,385);
  velocityY = gravity + velocityY;
posX = velocityY + posX;
a = velocityY + a;
b = velocityY + b;
c = velocityY + c;
}
