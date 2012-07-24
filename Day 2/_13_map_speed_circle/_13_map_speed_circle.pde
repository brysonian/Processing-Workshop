/*

Set the diameter of a circle based on the speed of the user's mouse movement
This is done using the pmouseX and pmouseY variables and dist to determine
how far the mouse moved.

*/
float diameter = 10;

void setup() {
  size(600, 600);
  background(255);
  smooth();
  fill(0);
}

void draw() {
  background(255);
  ellipse(width/2, height/2, diameter, diameter);
}

void mouseMoved() {
  float moveSpeed = dist(mouseX, mouseY, pmouseX, pmouseY);
  diameter = map(moveSpeed, 0, 300, 10, 590);
}




