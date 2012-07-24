float centerX;
float centerY;

void setup() {
  size(600, 600);
  centerX = width/2;
  centerY = height/2;
  smooth();
}

void draw() {
  background(255);
  float radius = map(mouseY, 0, height, 10, 290);
  float spokes = round(map(mouseX, 0, width, 3, 40));
  float w = map(spokes, 3, 40, 10, 1);
  strokeWeight(w);
  for (int i=0; i<spokes; i++) {
    float angle = radians(360/spokes * i - 90);
    float x = cos(angle) * radius + centerX;
    float y = sin(angle) * radius + centerY;  
    line(centerX, centerY, x, y);
  }
}




