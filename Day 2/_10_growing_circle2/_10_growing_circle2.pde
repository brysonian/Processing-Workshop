float diameter = 0;
float targetDiameter = 500;

void setup() {
  size(600, 600);
  background(255);
  smooth();
  fill(0);
}

void draw() {
  background(255);
  ellipse(width/2, height/2, diameter, diameter);
  diameter += (targetDiameter - diameter) * 0.125;  
}

void mousePressed() {
  float d = dist(width/2, height/2, mouseX, mouseY);
  targetDiameter = d * 2;
}




