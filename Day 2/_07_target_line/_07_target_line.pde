float x = 0;
float targetX = 250;

void setup() {
  size(600, 600);
  background(255);
  smooth();
}

void draw() {
  background(255);
  line(x, 0, x, height);  
  x += (targetX - x) * 0.125;
}

void mousePressed() {
  targetX = mouseX;
}





