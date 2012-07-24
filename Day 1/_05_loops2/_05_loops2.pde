size(600, 600);
smooth();
background(255);

for (int margin=0; margin < 400; margin += 10) {
  rect(margin, margin, width - (margin * 2), width - (margin * 2));
}
