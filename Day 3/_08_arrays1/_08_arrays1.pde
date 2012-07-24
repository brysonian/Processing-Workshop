int index = 0;
int[] numbers = new int[10];

void setup() {
  size(500, 200);
  smooth();
  
  numbers[0] = 15;
  numbers[1] = 5;
  numbers[2] = 78;
  numbers[3] = 123;
  numbers[4] = 299;
  numbers[5] = 0;
  numbers[6] = 157;
  numbers[7] = 445;
  numbers[8] = 499;
  numbers[9] = 350; 
}

void draw() {
  background(0);
  stroke(255);
  line(numbers[index], 0, numbers[index], height);
  
  index++;
  if (index > 9) {
    index = 0;
  }  
}
