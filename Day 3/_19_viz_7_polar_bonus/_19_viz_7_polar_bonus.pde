int[] randomNumbers = new int[225];
int[] humanNumbers;

int[] randomSums = new int[100];
int[] humanSums = new int[100];

void setup() {
  size(700, 700);
  smooth();
  noFill();

  for (int i=0; i<randomNumbers.length; i++) {
    int num = floor(random(0, 100));
    randomNumbers[i] = num;
    randomSums[num]++;
  }

  // load human numbers
  String[] humanFile = loadStrings("numbers-twitter.txt");
  humanNumbers = new int[humanFile.length];
  for (int i=0; i<humanFile.length; i++) {
    int num = int(humanFile[i]);
    humanNumbers[i] = num;
    humanSums[num]++;
  }
}

void draw() {
  background(0);

  colorMode(HSB, 360, 100, 100);
  int randomMax = getMaxValue(randomSums);
  int humanMax = getMaxValue(humanSums);

  int totalMax = max(randomMax, humanMax);

  pushMatrix();
  translate(width/2, height/2);
  for (int i=0; i<randomSums.length; i++) {
    float angle = map(i, 0, 100, 0, TWO_PI);
    float startX = cos(angle) * 200;
    float startY = sin(angle) * 200;

    int randomVal = randomSums[i];
    int humanVal = humanSums[i];    
    float randomMapped = map(randomVal, 0, totalMax, 0, 100);
    float humanMapped = map(humanVal, 0, totalMax, 0, 100);
    
    float endX = cos(angle) * (200 + humanMapped);
    float endY = sin(angle) * (200 + humanMapped);
    stroke(map(humanMax-humanVal, 0, humanMax, 360, 180), 100, 100);
    line(startX, startY, endX, endY);

    float rEndX = cos(angle) * (200 - randomMapped);
    float rEndY = sin(angle) * (200 - randomMapped);
    stroke(map(randomMax-randomVal, 0, randomMax, 360, 180), 100, 100);
    line(startX, startY, rEndX, rEndY);

  }
  colorMode(RGB, 255, 255, 255);
  stroke(50);
  ellipse(0, 0, 400, 400);
  stroke(40);
  float rMM = 400 - map(randomMax, 0, totalMax, 0, 200);
  ellipse(0, 0, rMM, rMM);
  float hMM = 400 + map(humanMax, 0, totalMax, 0, 200);
  ellipse(0, 0, hMM, hMM);

  popMatrix();
}

int getMaxValue(int[] numbers) {
  int m = 0;
  for (int i=0; i<numbers.length; i++) {
    if (numbers[i] > m) {
      m = numbers[i];
    }
  }
  return m;
}

