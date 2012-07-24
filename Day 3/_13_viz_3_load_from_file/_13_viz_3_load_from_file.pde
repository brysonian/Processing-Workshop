int[] randomNumbers = new int[225];
int[] humanNumbers;
int[] rndorgNumbers;

void setup() {
  size(1000, 500);
  smooth();
  noStroke();
  
  for (int i=0; i<randomNumbers.length; i++) {
    randomNumbers[i] = floor(random(0, 100));
  }
  
  // load human numbers
  String[] humanFile = loadStrings("numbers-twitter.txt");
  humanNumbers = new int[humanFile.length];
  for (int i=0; i<humanFile.length; i++) {
    humanNumbers[i] = int(humanFile[i]);
  }

  // load rndorg numbers
  String[] rndorgFile = loadStrings("numbers-randomorg.txt");
  rndorgNumbers = new int[rndorgFile.length];
  for (int i=0; i<rndorgFile.length; i++) {
    rndorgNumbers[i] = int(rndorgFile[i]);
  }
}

void draw() {
  background(0);
  fill(255, 50);
  
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
}
