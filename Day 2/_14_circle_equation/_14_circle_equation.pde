float angle = 0;
float radius = 100;

void setup() {
  size(600, 600);
  smooth();
}

void draw() {
  background(255);
  fill(0);
  float centerX = 300;
  float centerY = 300;
  float x = cos(angle) * radius + centerX;
  float y = sin(angle) * radius + centerY;  
  ellipse(x, y, 10, 10);
  angle += radians(1);
}
