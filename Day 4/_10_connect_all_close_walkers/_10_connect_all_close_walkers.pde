int connect_radius = 50;

Walker[] walkers = new Walker[500];

void setup() {
  size(900, 510);
  smooth();
  background(255);
  noStroke();
  
  for (int i=0; i<walkers.length; i++) {
    float x = random(0, width);
    float y = random(0, height);
    walkers[i] = new Walker(x, y);  
  }
}

void draw() {

  // moves the guys
  for (int i=0; i<walkers.length; i++) {
    walkers[i].move();
  }
  
  // do a nested loop to test the distance between all walkers
  for (int i=0; i<walkers.length; i++) {
    for (int j=i; j<walkers.length; j++) {
      float d = dist(walkers[j].x, walkers[j].y, walkers[i].x, walkers[i].y);
      if (d < connect_radius) {
        float grey = map(d, 0, connect_radius, 255, 0);
        stroke(grey, 10);
        line(walkers[j].x, walkers[j].y, walkers[i].x, walkers[i].y);
      }
    }
  }
}

void mousePressed() {
  saveFrame("gen-####.png");
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
    fill(100);
    noStroke();
    ellipse(x, y, 20, 20);
  }
  
  void move() {
    x += random(-1, 1);
    y += random(-1, 1); 
  }
}









