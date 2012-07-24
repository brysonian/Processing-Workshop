float x = 0;

void setup() {
  size(600, 600);
  background(255);
  smooth();
}

void draw() {
  background(255);
  line(x, 0, x, height);
}

void mousePressed() {
  x+=10;  
}








