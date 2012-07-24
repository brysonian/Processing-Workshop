size(600, 600);
smooth();
background(0, 100, 255);
point(300, 300);

// the line function arguments are x, y for the start and x,y for the end
line(10, 400, 400, 100);
line(10, 400, 10, 10);
line(10, 10, 400, 100);

stroke(255, 255, 0);

triangle( 300, 300, // first point x and y
          500, 500, // second point x and y
          200, 400); // third point x and y

fill(255, 100, 0, 100);
// x and y of the upper left and width and height
rect(350, 200, 150, 200);

fill(255, 0, 255);
stroke(0);
strokeWeight(5);
ellipse(150, 400, 100, 100);







