Walker guy; // just like "int x;" it is type then name
Walker fred;

void setup() {
  size(500, 500);
  smooth();
  guy = new Walker(200, 100);  
  fred = new Walker(150, 400);
}

void draw() {
  background(255);
  
  guy.display();
  guy.move();

  fred.display();
  fred.move();
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
    fill(0);
    ellipse(x, y, 20, 20);
  }
  
  void move() {
    x += random(-1, 1);
    y += random(-1, 1); 
  }
}









