Walker[] walkers = new Walker[500];

void setup() {
  size(500, 500);
  smooth();
  noStroke();
  
  for (int i=0; i<walkers.length; i++) {
    float x = random(0, width);
    float y = random(0, height);
    walkers[i] = new Walker(x, y);  
  }
}

void draw() {
  for (int i=0; i<walkers.length; i++) {
    walkers[i].display();
    walkers[i].move();
  }
}





class Walker
{
  float x;
  float y;
  
  Walker(float ax, float ay) {
    x = ax;
    y = ay;
  }
  
  void display() {
    // do this
    // fill(0, 10);
    // ellipse(x, y, 20, 20);
    
    // or try this
    stroke(0, 10);
    pushMatrix();
    translate(x, y);
    rotate(random(0, 6));
    line(0, 0, 10, 0);
    popMatrix();
  }
  
  void move() {
    x += random(-1, 1);
    y += random(-1, 1); 
  }
}









