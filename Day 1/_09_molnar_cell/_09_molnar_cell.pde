size(600, 600);
smooth();
background(255);

for (int i=0; i<8; i++) {
  float chance = random(0, 100);
  if (chance < 90) {
    int offset = i * 20 + 20;
    rect(offset, offset, width - (offset*2), width - (offset*2));
  }
}
