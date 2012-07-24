Circle fred;

void setup() {
  size(900, 510);
  smooth();
  background(255);
  
  fred = new Circle(50);
}

void draw() {
  fred.display();
}

class Circle
{
  float x;
  float y;
  float radius;
  
  Circle(float aradius) {
    radius = aradius;
    x = random(radius, width-radius);
    y = random(radius, height-radius);
  }
  
  void display() {
    fill(0);
    noStroke();
    ellipse(x, y, radius * 2, radius * 2);
  }
}
