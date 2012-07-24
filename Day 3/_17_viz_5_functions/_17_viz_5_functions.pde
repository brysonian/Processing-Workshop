int[] randomNumbers = new int[225];
int[] humanNumbers;
int[] rndorgNumbers;

int[] randomSums = new int[100];
int[] humanSums = new int[100];
int[] rndorgSums = new int[100];

void setup() {
  size(1000, 500);
  smooth();
  
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

  // load rndorg numbers
  String[] rndorgFile = loadStrings("numbers-randomorg.txt");
  rndorgNumbers = new int[rndorgFile.length];
  for (int i=0; i<rndorgFile.length; i++) {
    int num = int(rndorgFile[i]);
    rndorgNumbers[i] = num;
    rndorgSums[num]++;
  }
}

void draw() {
  background(0);
  fill(255, 50);
  noStroke();

  drawCirclePlot(randomNumbers, 50);
  drawCirclePlot(humanNumbers, 60);
  drawCirclePlot(rndorgNumbers, 70);
  
  drawBarChart(randomSums, 200);
  drawBarChart(humanSums, 300);
  drawBarChart(rndorgSums, 400);
}

void drawCirclePlot(int[] numbers, int y) {
  fill(255, 50);
  noStroke();

  for(int i=0; i<numbers.length; i++) {
    float x = map(numbers[i], 0, 100, 0, width);
    ellipse(x+5, y, 10, 10);
  }
}

void drawBarChart(int[] numbers, int y) {
  fill(255);
  stroke(0);
  for(int i=0; i<numbers.length; i++) {
    float h = numbers[i];
    rect(i*10, y, 10, -h*10);
  }
}

