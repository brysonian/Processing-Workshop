int minRadius = 3;
int maxRadius = 300;

Circle[] circles = new Circle[1000];
int count = 0;

void setup() {
  size(900, 510);
  smooth();
  background(255);
}

void draw() {
  // Add a circle with a random size
  float radius = random(minRadius, maxRadius);
  Circle newguy = new Circle(radius);
  
  // If the circle overlaps any existing circle,
  // throw it away.
  boolean ok = true;
  for (int i=0; i<count; i++) {
    float d = dist(newguy.x, newguy.y, circles[i].x, circles[i].y);
    if (d < (newguy.radius + circles[i].radius)) {
      ok = false;
      break; // stop looking once it fails
    }
  }
  
  if (ok) {
    newguy.display();
    circles[count] = newguy;
    count++;
  }
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
