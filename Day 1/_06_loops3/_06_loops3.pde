size(600, 600);
background(255);
smooth();

for (int y=0; y<height; y+=40) {
  line(0, y, width, y);
  line(y, 0, y, height);
}

for (int i=0; i<600; i++) {
  line(0, 0, i, 600);
}
