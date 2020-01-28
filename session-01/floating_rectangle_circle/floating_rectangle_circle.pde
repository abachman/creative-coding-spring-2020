size(800, 800);

strokeWeight(10);

background(255);

//   x   y   w   h

stroke(0);
fill(#0025AF);
ellipse(width / 2, height / 2, 100, 100);

fill(166, 166, 0, 100);
ellipse(width / 2, height / 2 + 40, 100, 100);

stroke(0, 0, 200);
strokeWeight(24);
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

noFill();
stroke(255, 0, 0);
rect(100, 100, width - 200, height - 200);

stroke(0, 255, 0);
rect(150, 150, width - 300, height - 300);

stroke(0, 255, 255);
rect(200, 200, width - 400, height - 400);
