void setup() {
  size(500, 500);
  smooth();
}

void draw() {
  background(255);
  thing(mouseX, 50);
  thing(mouseX+50, 150);
}

void thing(int x, int y) {
  pushMatrix();
  translate(x, y);
  fill(0);
  ellipse(0, 0, 50, 50);  
  fill(255);
  ellipse(-5, -5, 5, 5);
  ellipse(5, -5, 5, 5);
  stroke(255);
  line(-10, 10, 10, 10);
  popMatrix();
}
