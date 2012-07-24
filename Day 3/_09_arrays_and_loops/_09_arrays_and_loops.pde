int[] numbers = new int[10];

void setup() {
  size(500, 200);
  smooth();
  for (int i=0; i<numbers.length; i++) {
    numbers[i] = floor(random(0, width));
  }
}

void draw() {
  background(0);
  stroke(255);
  for (int i=0; i<numbers.length; i++) {
    line(numbers[i], 0, numbers[i], height);  
  }
}




