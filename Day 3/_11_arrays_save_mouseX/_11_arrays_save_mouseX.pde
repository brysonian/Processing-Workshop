int[] xpositions = new int[50];
int count = 0;

void setup() {
  size(500, 200);
  smooth();
}

void draw() {
  background(0);
  stroke(255);
  for (int i=0; i<xpositions.length; i++) {
    line(xpositions[i], 0, xpositions[i], height);  
  }
  xpositions[count] = mouseX;
  count++;
  if (count > xpositions.length - 1) {
    count = 0;
  }
  
}


