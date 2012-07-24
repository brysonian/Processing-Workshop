size(600, 600);
background(255);
smooth();

for (int x=20; x<width; x+=20) {
  line(x, 0, x/5, height);
}

for (int x=20; x<width; x+=20) {
  line(x, 0, x/5 + 300, height);
}
