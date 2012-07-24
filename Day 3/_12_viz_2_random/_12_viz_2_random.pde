int[] randomNumbers = new int[225];

void setup() {
  size(1000, 500);
  smooth();
  noStroke();
  
  for (int i=0; i<randomNumbers.length; i++) {
    randomNumbers[i] = floor(random(0, 100));
  }
  
}

void draw() {
  background(0);
  fill(255, 50);
  for(int i=0; i<randomNumbers.length; i++) {
    float x = map(randomNumbers[i], 0, 100, 0, width);
    ellipse(x+5, 50, 10, 10);
  }
}
