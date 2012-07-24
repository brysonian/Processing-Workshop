size(600, 600);
background(255);
smooth();

for (int y=0; y<height; y++) {
  stroke(y, 0, 0);
  line(0, y, width, y);
}

