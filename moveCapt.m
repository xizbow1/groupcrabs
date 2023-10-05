function [xCapt,yCapt,thetaCapt] = moveCapt (cmd,x,y,theta)
  
  xCapt = x;
  yCapt = y;
  thetaCapt = theta;
  
  dTheta = pi/6;
  
  
  
  if( cmd == "w")
    %move forward
  endif
  
   if( cmd == "a")
    thetaCapt = theta - dTheta;
  endif

  if( cmd == "s")
    %move backward
  endif

  if( cmd == "d")
    %move right
    thetaCapt = theta + dTheta;
  endif
  
    
  
endfunction
