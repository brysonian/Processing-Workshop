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

  // random numbers
  for(int i=0; i<randomNumbers.length; i++) {
    float x = map(randomNumbers[i], 0, 100, 0, width);
    ellipse(x+5, 50, 10, 10);
  }
  
  // human numbers
  for(int i=0; i<humanNumbers.length; i++) {
    float x = map(humanNumbers[i], 0, 100, 0, width);
    ellipse(x+5, 60, 10, 10);
  }

  // rndorg numbers
  for(int i=0; i<rndorgNumbers.length; i++) {
    float x = map(rndorgNumbers[i], 0, 100, 0, width);
    ellipse(x+5, 70, 10, 10);
  }
  
  // ---
  // BAR CHARTS
  // --
  fill(255);
  stroke(0);

  // random number bars
  for(int i=0; i<randomSums.length; i++) {
    float h = randomSums[i];
    rect(i*10, 200, 10, -h*10);
  }

  // human number bars
  for(int i=0; i<humanSums.length; i++) {
    float h = humanSums[i];
    rect(i*10, 300, 10, -h*10);
  }

  // rndorg number bars
  for(int i=0; i<rndorgSums.length; i++) {
    float h = rndorgSums[i];
    rect(i*10, 400, 10, -h*10);
  }


}
