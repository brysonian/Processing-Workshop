int connect_radius = 100;
float noise_strength = TWO_PI;
float noise_scale = 200;

Walker[] walkers = new Walker[3000];

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
    //walkers[i].display();
  }
  
  for (int i=1; i<walkers.length; i++) {
    float d = dist(walkers[i-1].x, walkers[i-1].y, walkers[i].x, walkers[i].y);
    if (d < connect_radius) {
      float grey = map(d, 0, connect_radius, 255, 0);
      stroke(grey, 10);
      line(walkers[i-1].x, walkers[i-1].y, walkers[i].x, walkers[i].y);
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
  float angle;
  
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
    float angle = noise(x/noise_scale, y/noise_scale) * noise_strength;
    x += cos(angle) * 1;
    y += sin(angle) * 1;
    
    if (x < 0 || x > width || y < 0 || y > height) {
      x = random(0, width);
      y = random(0, height);
    }
  }
}
