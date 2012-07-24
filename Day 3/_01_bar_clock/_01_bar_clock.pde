void setup() {
  size(600, 300);
  smooth();  
}

void draw() {
  background(255);
  noStroke();
  
  float h = hour();
  float hWidth = map(h, 0, 24, 0, width);
  float hColor = map(h, 0, 24, 0, 255);
  fill(hColor, 0, 0);
  rect(0, 0, hWidth, 100);

  float m = minute();
  float mWidth = map(m, 0, 60, 0, width);
  float mColor = map(m, 0, 60, 0, 255);
  fill(0, mColor, 0);
  rect(0, 100, mWidth, 100);
  
  float s = second();
  float sWidth = map(s, 0, 60, 0, width);
  float sColor = map(s, 0, 60, 0, 255);
  fill(0, 0, sColor);
  rect(0, 200, sWidth, 100);
  
}
