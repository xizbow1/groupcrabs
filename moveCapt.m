function [xCapt,yCapt,thetaCapt] = moveCapt (cmd,x,y,theta,mapWidth,mapHeight)
  
  xCapt = x;
  yCapt = y;
  thetaCapt = theta;
  
  dTheta = pi/6;
  dStep = 50;
  
  cosStep = dStep*cos(theta);
  sinStep = dStep*sin(theta);
  
  border = 5; % used in call to isInBounds
  
  if( cmd == "w") 
  
    wxCapt = x + cosStep; %var for storing xCapt if 'w' is pressed
    wyCapt = y + sinStep; %var for storing yCapt if 'w' is pressed
  
    if(isInBounds(wxCapt, wyCapt, mapWidth, mapHeight,border))
    
      %move forward
      xCapt = wxCapt;
      yCapt = wyCapt;
   
    else 
    
      xCapt = x;
      yCapt = y;
    
    endif
    
    thetaCapt = theta;
    
  elseif (cmd == "a")
  
    %rotate left
    xCapt = x;
    yCapt = y;
    thetaCapt = theta - dTheta;
    
  elseif ( cmd == "s" && boundsCheckS)
  
    sxCapt = x - cosStep; %var for storing xCapt if 's' is pressed
    syCapt = y - sinStep; %var for storing yCapt if 's' is pressed
    
    if(isInBounds(sxCapt, syCapt, mapWidth, mapHeight,border))
     
      %move backward
      xCapt = sxCapt;
      yCapt = syCapt;
    
    else
      
      xCapt = x;
      yCapt = y;
      
    endif
    
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
