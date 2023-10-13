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

    jxCrab = x + cosStep; %var for storing xCrab if 'j' is pressed
    jyCrab = y + sinStep; %var for storing yCrab if 'j' is pressed

    if(isInBounds(jxCrab, jyCrab, mapWidth, mapHeight,border))

      %move backward
      xCrab = jxCrab;
      yCrab = jyCrab;

    else

      xCrab = x;
      yCrab = y;

    endif

    thetaCrab = theta;
    
  elseif ( cmd == "k")

    kxCrab = x + sinStep; %var for storing xCrab if 'k' is pressed
    kyCrab = y - cosStep; %var for storing yCrab if 'k' is pressed

    if(isInBounds(kxCrab, kyCrab, mapWidth, mapHeight,border))

      %move backward
      xCrab = kxCrab;
      yCrab = kyCrab;

    else

      xCrab = x;
      yCrab = y;

    endif

    thetaCrab = theta;
    

  elseif ( cmd == "l")
    
    lxCrab = x - cosStep; %var for storing xCrab if 'l' is pressed
    lyCrab = y - sinStep; %var for storing yCrab if 'l' is pressed

    if(isInBounds(lxCrab, lyCrab, mapWidth, mapHeight,border))

      %move backward
      xCrab = lxCrab;
      yCrab = lyCrab;

    else

      xCrab = x;
      yCrab = y;

    endif

    thetaCrab = theta;

  else

    %default
    xCrab = x;
    yCrab = y;
    thetaCrab = theta;

  endif

endfunction
