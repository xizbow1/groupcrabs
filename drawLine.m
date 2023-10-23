
function handle = drawLine (p1, p2, myColor)
  
  %repeat coords back
  p1;
  p2;
  myColor;
  
  % extract x and y coords
  x = [ p1(1) ; p2(1) ];
  y = [ p1(2) ; p2(2) ];
  
  %draw the line!
  handle = plot(x,y,myColor);
 
 
  set(handle, "LineWidth", 3);
  

endfunction