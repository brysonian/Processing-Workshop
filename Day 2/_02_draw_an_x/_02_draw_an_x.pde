void setup() {
  size(600, 600);
  background(255);
  smooth();
}

void draw() {
  line(mouseX-5, mouseY-5, mouseX+5, mouseY+5);
  line(mouseX+5, mouseY-5, mouseX-5, mouseY+5);
}


