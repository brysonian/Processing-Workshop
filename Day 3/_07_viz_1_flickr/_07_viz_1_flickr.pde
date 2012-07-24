void setup() {
  size(1000, 500);
  smooth();
  noStroke();
}

void draw() {
  background(0);
  fill(255, 50);
  for(int i=0; i<225; i++) {
    float r = floor(random(0, 100));
    float x = map(r, 0, 100, 0, width);
    ellipse(x+5, 250, 10, 10);
  }
}
