void setup() {
  size(500, 500);
  smooth();
}

void draw() {
  background(255);
  
  pushMatrix();
    translate(250, 250);
    
    // draw red one
    pushMatrix();
      rotate(radians(frameCount));
      fill(255, 0, 0);
      noStroke();
      rect(-150, -150, 300, 300);
    popMatrix();
  
    // draw black one
    pushMatrix();
      rotate(radians(-frameCount));
      fill(0, 0, 0);
      noStroke();
      rect(-50, -50, 100, 100);
    popMatrix();
  popMatrix();
}
