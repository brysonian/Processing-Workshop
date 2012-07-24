size(600, 600);
background(255);
smooth();

for (int y=40; y<height; y+=40) {
  for (int x=40; x<width; x+=40) {
    fill(y, x, 0);
    ellipse(x, y, 30, 30);
  }
}

