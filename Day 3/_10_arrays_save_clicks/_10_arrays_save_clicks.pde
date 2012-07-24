int[] xclicks = new int[10];
int count = 0;

void setup() {
  size(500, 200);
  smooth();
}

void draw() {
  background(0);
  stroke(255);
  for (int i=0; i<count; i++) {
    line(xclicks[i], 0, xclicks[i], height);  
  }
}

void mousePressed() {
  xclicks[count] = mouseX;
  count++;
  if (count > xclicks.length-1) {
    count = 0;
  }
}



