function [xCrab,yCrab,thetaCrab] = moveCrab (cmd,x,y,theta,mapWidth,mapHeight)

  xCrab = x;
  yCrab = y;
  thetaCrab = theta;

  dTheta = pi/6;
  dStep = 50;

  cosStep = dStep*cos(theta);
  sinStep = dStep*sin(theta);

  border = 5; % used in call to isInBounds

  if( cmd == "i")

    wxCrab = x + cosStep; %var for storing xCrab if 'w' is pressed
    wyCrab = y + sinStep; %var for storing yCrab if 'w' is pressed

    if(isInBounds(wxCrab, wyCrab, mapWidth, mapHeight,border))

      %move forward
      xCrab = wxCrab;
      yCrab = wyCrab;

    else

      xCrab = x;
      yCrab = y;

    endif

    thetaCrab = theta;

  elseif (cmd == "a")

    %rotate left
    xCrab = x;
    yCrab = y;
    thetaCrab = theta - dTheta;

  elseif ( cmd == "l" && boundsCheck)

    sxCrab = x - cosStep; %var for storing xCrab if 's' is pressed
    syCrab = y - sinStep; %var for storing yCrab if 's' is pressed

    if(isInBounds(sxCrab, syCrab, mapWidth, mapHeight,border))

      %move backward
      xCrab = sxCrab;
      yCrab = syCrab;

    else

      xCrab = x;
      yCrab = y;

    endif

    thetaCrab = theta;

  elseif ( cmd == "o")

    %rotate right
    xCrab = x;
    yCrab = y;
    thetaCrab = theta + dTheta;

  else

    %default
    xCrab = x;
    yCrab = y;
    thetaCrab = theta;

  endif

endfunction
