function [xJelly,yJelly,thetaJelly] = moveJelly(level, x, y, theta, size, height, width)
  
  jellyMove = 50;
  step = jellyMove + level;
  
  xJelly = x;
  yJelly = y + step;
  thetaJelly = theta;
  
  % return a y-position increased by step, but return the same x and theta values
  
  if (yJelly > height-10*size)
   
   % set the returned y-value to be size and return a new random x value between 0 and width
   yJelly = size;
   xJelly = rand() * width;
   
  endif

endfunction
