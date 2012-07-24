int x = 0;
int speed = 10;

void setup() {
  size(600, 600);
  background(255);
  smooth();
}

void draw() {
  background(255);
  line(x, 0, x, height);
  x += speed;
  if ((x > width) || (x < 0)) {
    speed = -speed;
  }
}
