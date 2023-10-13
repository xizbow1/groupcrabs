function [xCrab,yCrab,thetaCrab] = moveCrab (cmd,x,y,theta,mapWidth,mapHeight)

  xCrab = x;
  yCrab = y;
  thetaCrab = theta;

  dTheta = pi/6;
  dStep = 50;

  cosStep = dStep*cos(theta);
  sinStep = dStep*sin(theta);

  border = 5; % used in call to isInBounds

  if( cmd == "u")

    %rotate left
    xCrab = x;
    yCrab = y;
    thetaCrab = theta - dTheta;

  elseif (cmd == "o")

    %rotate right
    xCrab = x;
    yCrab = y;
    thetaCrab = theta + dTheta;
    
  elseif ( cmd == "j")

    %move left
    xCrab = x + cosStep;
    yCrab = y + sinStep;
    thetaCrab = theta;
    
  elseif ( cmd == "k")

    sxCrab = x + sinStep; %var for storing xCrab if 's' is pressed
    syCrab = y - cosStep; %var for storing yCrab if 's' is pressed

    if(isInBounds(sxCrab, syCrab, mapWidth, mapHeight,border))

      %move backward
      xCrab = sxCrab;
      yCrab = syCrab;

    else

      xCrab = x;
      yCrab = y;

    endif

    thetaCrab = theta;
    

  elseif ( cmd == "l")

    %move right
    xCrab = x - cosStep;
    yCrab = y - sinStep;
    thetaCrab = theta;

  else

    %default
    xCrab = x;
    yCrab = y;
    thetaCrab = theta;

  endif

endfunction
