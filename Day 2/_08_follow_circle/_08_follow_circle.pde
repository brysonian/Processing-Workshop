float x = 0;
float y = 0;
float targetX = 250;
float targetY = 250;

void setup() {
  size(600, 600);
  background(255);
  smooth();
  fill(0);
}

void draw() {
  background(255);
  ellipse(x, y, 20, 20);  
  
  x += (targetX - x) * 0.125;
  y += (targetY - y) * 0.125;
}

void mousePressed() {
  targetX = mouseX;
  targetY = mouseY;
}





