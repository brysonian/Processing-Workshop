void setup() {
  size(500, 500);
  smooth();
}

void draw() {
  background(255);
  
  pushMatrix();
  translate(250, 250);
  rotate(radians(frameCount));
  
  fill(255, 0, 0);
  noStroke();
  rect(-50, -50, 100, 100);
  
  popMatrix();
}
