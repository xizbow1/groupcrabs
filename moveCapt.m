function [xCapt,yCapt,thetaCapt] = moveCapt (cmd,x,y,theta)
  
  xCapt = x;
  yCapt = y;
  thetaCapt = theta;
  
  dTheta = pi/6;
  dStep = 50;
  
  
  if( cmd == "w")
  
    %move forward
    xCapt = x + dStep*cos(theta);
    yCapt = y + dStep*sin(theta);
    thetaCapt = theta;
    
  elseif (cmd == "a")
  
    %rotate left
    xCapt = x;
    yCapt = y;
    thetaCapt = theta - dTheta;
    
  elseif ( cmd == "s")
  
    %move backward
    xCapt = x - dStep*cos(theta);
    yCapt = y - dStep*sin(theta);
    thetaCapt = theta;
    
  elseif ( cmd == "d")
  
    %rotate right
    xCapt = x;
    yCapt = y;
    thetaCapt = theta + dTheta;
    
  else
    
    %default
    xCapt = x;
    yCapt = y;
    thetaCapt = theta;
    
  endif
  
endfunction
