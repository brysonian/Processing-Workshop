void setup() {
  size(500, 500);
  smooth();
}

void draw() {
  background(255);
  thing();
}

void thing() {
  fill(0);
  ellipse(mouseX, mouseY, 50, 50);  
  fill(255);
  ellipse(mouseX-5, mouseY-5, 5, 5);
  ellipse(mouseX+5, mouseY-5, 5, 5);
  stroke(255);
  line(mouseX-10, mouseY+10, mouseX+10, mouseY+10);
}
