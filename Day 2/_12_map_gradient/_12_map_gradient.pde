
void setup() {
  size(600, 300);
  smooth();
}

void draw() {
  background(255);
  for (int x=0; x<width; x++) {
    float r = map(x, 0, width, 0, 255);
    stroke(r, 0, 0);
    line(x, 0, x, height);
  }
}
