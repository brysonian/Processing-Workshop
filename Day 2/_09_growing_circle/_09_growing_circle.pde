float diameter = 0;
float targetDiameter = 550;

void setup() {
  size(600, 600);
  background(255);
  smooth();
  fill(0);
}

void draw() {
  background(255);
  ellipse(300, 300, diameter, diameter);
  diameter += (targetDiameter - diameter) * 0.125;
}

void mousePressed() {
  diameter = 0;
}
