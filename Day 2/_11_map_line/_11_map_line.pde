float lineWidth = 100;

void setup() {
  size(600, 300);
  smooth();
}

void draw() {
  background(255);
  line(0, 150, lineWidth, 150);

  lineWidth = map(mouseY, 0, height, 0, width);
}
