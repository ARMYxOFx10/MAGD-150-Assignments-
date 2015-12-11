void setup(){
  size(800, 600);
}
void mousePressed(){
  arc(mouseX, mouseY, 80, 80, 0, QUARTER_PI, PIE);
  ellipse(mouseX+20, mouseY+10, 10, 10);
  setup();
}
void draw(){
   //PIZZA SLICES
   background(248, 250, 177);
     //TV 
  fill(0);
  stroke(0);
  rect(280, 225, 200, 100);
  rect(370, 300, 20, 50);
   noFill();
   fill(170, 170, 170);
   rect(295, 240, 170, 70);
   point(310, 210);
   point(440, 210);
   
   //TV STAND
   noFill();
   fill(178, 117, 56);
   rect(255, 350, 250, 100);
   line(325, 450, 325, 350);
   line(425, 450, 425, 350);
   noFill();
   fill(0);
   triangle(310, 390, 300, 400, 320, 400); 
   triangle(440, 390, 430, 400, 450, 400);
   
   //LIGHTS
   noFill();
   fill(183, 183, 183);
   ellipse(150, 420, 50, 50);
   ellipse(600, 420, 50, 50);
   line(600, 420, 600, 200);
   line(150, 420, 150, 200);
   point(600, 420);
   point(150, 420);
   
   //TOP OF LAMPS
   noFill();
   fill(118, 89, 60);
   beginShape(QUAD);
   vertex(180, 160);
   vertex(120, 160);
   vertex(100, 200);
   vertex(200, 200);
   endShape();
   
   beginShape(QUAD);
   vertex(630, 160);
   vertex(570, 160);
   vertex(550, 200);
   vertex(650, 200);
   endShape();
   
   //Speakers
    beginShape();
   vertex(200, 400);
   vertex(230, 400);
   vertex(230, 420);
   vertex(250, 420);
   vertex(250, 440);
   vertex(200, 440);
   endShape(CLOSE);
   
   beginShape();
   vertex(560, 400);
   vertex(530, 400);
   vertex(530, 420);
   vertex(510, 420);
   vertex(510, 440);
   vertex(560, 440);
   endShape(CLOSE);
   
   //SPEAKER CIRCLES FOR THE LEFT SPREAKER 
   noFill();
   fill(0);
   ellipse(215, 410, 10, 10);
   ellipse(215, 430, 10, 10);
   ellipse(240, 430, 10, 10);
   
   //SPEAKER CIRCLES FOR THE RIGHT SPEAKER
   ellipse(545, 410, 10, 10);
   ellipse(545, 430, 10, 10);
   ellipse(520, 430, 10, 10);
   noFill();
   fill(255, 150, 70);
   arc(mouseX, mouseY, 80, 80, 0, QUARTER_PI, PIE);
   arc(200, 550, 80, 80, 0, QUARTER_PI, PIE);
   noFill();
   fill(234, 57, 21);
   ellipse(mouseX+20, mouseY+10, 10, 10);
   ellipse(mouseX+30, mouseY+10, 10, 10);
   ellipse(230, 560, 10, 10);
   ellipse(217, 560, 10, 10);
}
void keyPressed(){
  fill(255, 0, 0);
  rect(295, 240, 170, 70);
}
