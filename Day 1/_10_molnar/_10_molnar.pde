int cellWidth = 100;

size(1000, 600);
background(255);
smooth();

for (int y=0; y<height; y+=cellWidth) {
  for (int x=0; x<width; x+=cellWidth) {
    // draw each cell
    for (int i=0; i<8; i++) {
      float chance = random(0, 100);
      if (chance < 90) {
        int offset = i * 10;
        rect(offset + x, offset + y, cellWidth - (offset*2), cellWidth - (offset*2));
      }
    }
    // ---
  }
}

