size(800, 800);
background(255);

//   x   y   w   h

noStroke();
fill(230);
ellipse(width/2, height/2, width, height);

strokeWeight(1);
stroke(200);
line(0, 0, width, height);
line(width, 0, 0, height);
line(0, height/2 - 20, width, height/2 - 20);
line(0, height/2 + 20, width, height/2 + 20);
line(width/2, 0, width/2, height);

strokeWeight(3);

stroke(0);
fill(#AF2500, 100);
ellipse(width / 2, height / 2 - 40, 100, 100);

stroke(0);
fill(#00AF25, 120);
ellipse(width / 2, height / 2, 100, 100);

fill(#0025AF, 140);
ellipse(width / 2, height / 2 + 40, 100, 100);

noFill();
stroke(10, 10, 180);
strokeWeight(12);
bezier(85, 20, 
       10, 10, 
       90, 90, 
       15, 80);

bezier(width - 85, 20, 
       width - 10, 10, 
       width - 90, 90, 
       width - 15, 80);
       
bezier(85, height - 20, 
       10, height - 10, 
       90, height - 90, 
       15, height - 80);
       
bezier(width - 85, height - 20, 
       width - 10, height - 10, 
       width - 90, height - 90, 
       width - 15, height - 80);


strokeWeight(24);
noFill();
stroke(200, 20, 40);
stroke(40);
rect(100, 100, width - 200, height - 200);

stroke(40, 193, 78);
stroke(100);
rect(150, 150, width - 300, height - 300);

stroke(0, 120, 200);
stroke(160);
rect(200, 200, width - 400, height - 400);
