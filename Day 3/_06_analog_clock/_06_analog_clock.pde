void setup() {
  size(500, 500);
  smooth();
}

void draw() {
  background(255);
  
  float s = second();
  float m = minute();
  float h = hour();
  
  pushMatrix();
  translate(width/2, height/2);

  pushMatrix();
  float sDeg = map(s, 0, 60, 0, 360) - 90;
  rotate(radians(sDeg));
  fill(255, 0, 0);
  rect(-5, -5, 225, 10);
  popMatrix();
  
  pushMatrix();
  float mDeg = map(m, 0, 60, 0, 360) - 90;
  rotate(radians(mDeg));
  fill(100);
  rect(-5, -5, 220, 10);  
  popMatrix();
  
  pushMatrix();
  float hDeg = map(h, 0, 24, 0, 360) - 90;
  rotate(radians(hDeg));
  fill(0);
  rect(-5, -5, 150, 10);
  popMatrix();
  
  popMatrix();  
}
