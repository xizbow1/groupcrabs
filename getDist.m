function dist = getDist (x1, y1, x2, y2)
  
  dX = x2 - x1;
  dY = y2 - y1;
  dist = sqrt(dX^2 + dY^2);

endfunction
