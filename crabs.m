function crabs ()

 % Crabs is a kids computer game where a fisherman, called the captain,
 % hunts for a very clever and powerful crab.
 % Draw the game map and initialize map dimensions.

[mapHeight , mapWidth] = drawMap( "BGImage.png" );

 % Initialize captain location, heading and size

 xCapt = 1000;
 yCapt = 200;
 thetaCapt = -pi/2;
 sizeCapt = 50;

  xCrab = 1000;
  yCrab = 1000;
  thetaCrab = -pi/2;
  sizeCrab = 30;
 % Draw the captain and initialize graphics handles

  captainGraphics = drawCaptain(xCapt, yCapt, thetaCapt, sizeCapt);
  crabGraphics = drawCrab(xCrab, yCrab, thetaCrab, sizeCrab);

  %initial command
  cmd ="null";

  while(cmd != "Q")

    % read keyboard
    cmd = kbhit();

    if( cmd == "w" || cmd == "a" ||  cmd == "d" || cmd == "s")

     % erase old captain
     for i =1:length(captainGraphics)
        set(captainGraphics(i),'Visible','off');
     endfor

    % move captain

    [xCapt,yCapt,thetaCapt] = moveCapt(cmd,xCapt,yCapt,thetaCapt,mapWidth,mapHeight);

    % draw new captain

    captainGraphics = drawCaptain(xCapt, yCapt, thetaCapt, sizeCapt);

  endif

  if( cmd == "u" || cmd == "o"|| cmd == "j" ||  cmd == "k" || cmd == "l")

     % erase old crab
     for i =1:length(crabGraphics)
        set(crabGraphics(i),'Visible','off');
     endfor

    % move crab

    [xCrab,yCrab,thetaCrab] = moveCrab(cmd,xCrab,yCrab,thetaCrab,mapWidth,mapHeight);

    % draw new captain

    crabGraphics = drawCrab(xCrab, yCrab, thetaCrab, sizeCrab);

    endif



  endwhile


close all
endfunction
