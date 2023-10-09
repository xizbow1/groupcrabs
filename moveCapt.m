function [xCapt,yCapt,thetaCapt] = moveCapt (cmd,x,y,theta,mapWidth,mapHeight)
  
  xCapt = x;
  yCapt = y;
  thetaCapt = theta;
  
  dTheta = pi/6;
  dStep = 50;
  
  cosStep = dStep*cos(theta);
  sinStep = dStep*sin(theta);
  
  %================= store a boolean for if the updated points would be in bounds==================
  
  wxCapt = x + cosStep; %var for storing xCapt if 'w' is pressed
  wyCapt = y + sinStep; %var for storing yCapt if 'w' is pressed
  
  boundsCheckW = isInBounds(wxCapt, wyCapt, mapWidth, mapHeight);
  
  %=================
  
  sxCapt = x - cosStep; %var for storing xCapt if 'w' is pressed
  syCapt = y - sinStep; %var for storing yCapt if 'w' is pressed
  
  boundsCheckS = isInBounds(sxCapt, syCapt, mapWidth, mapHeight);
  
  %=================
  
  if(( cmd == "w") && boundsCheckW)
  
    %move forward
    xCapt = wxCapt;
    yCapt = wyCapt;
    thetaCapt = theta;
    
  elseif (cmd == "a")
  
    %rotate left
    xCapt = x;
    yCapt = y;
    thetaCapt = theta - dTheta;
    
  elseif ( cmd == "s" && boundsCheckS)
  
    %move backward
    xCapt = sxCapt;
    yCapt = syCapt;
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
