void setup(){
  size(400, 400); 
  
  fill(240, 232, 162);
  rectMode(CENTER);
  rect(200, 200, 50, 200, 5);
 
 //VERY TOP OF TOWER
  line(200, 60, 200, 30);
  line(188, 40, 213, 40);
  rect(200, 70, 30, 30, 5);
 
  //TOP PART OF CLOCK
  rect(200, 100, 50, 50, 5);
  point(205, 105);
  point(195, 115);
  
  //SQUARE AROUND CLOCK
  noFill();
  fill(170, 127, 46);
  rect(200, 125, 62, 62, 5);
 
  //CLOCK PART
  noFill();
  fill(245, 241, 210);
  ellipseMode(CENTER);
  ellipse(200, 125, 60, 60);
  ellipse(200, 125, 40, 40);
  line(200, 125, 205, 105);
  line(200, 125, 195, 115);
  
  


}
void loop(){
}
