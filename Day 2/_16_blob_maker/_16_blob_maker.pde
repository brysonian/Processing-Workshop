float centerX;
float centerY;

void setup() {
  size(600, 600);
  centerX = width/2;
  centerY = height/2;
  smooth();
  fill(0);
  noLoop();
}

void draw() {
  background(255);
  float radius = map(mouseY, 0, height, 10, 290);
  float spokes = round(map(mouseX, 0, width, 3, 40));
  
  beginShape();
  for (int i=0; i<spokes; i++) {
    float angle = radians(360/spokes * i - 90);
    float r = random(0, 100);
    float x = cos(angle) * (radius + r) + centerX;
    float y = sin(angle) * (radius + r) + centerY;  
    vertex(x, y);
  }
  endShape(CLOSE);
}

void mousePressed() {
  redraw();
}

void keyPressed() {
  if (key == 's') {
    saveFrame("blob####.png");
  }
}





