function crabs (level)

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
thetaCrab = pi;
sizeCrab = 30;

xJelly = rand*mapWidth;
yJelly = 0;
thetaJelly = -pi/2;
sizeJelly = 25;

 % Draw the captain and initialize graphics handles

  captainGraphics = drawCaptain(xCapt, yCapt, thetaCapt, sizeCapt);
  crabGraphics = drawCrab(xCrab, yCrab, thetaCrab, sizeCrab);
  jellyGraphics = drawJelly(xJelly,yJelly,thetaJelly,sizeJelly)
  %initial command
  cmd ="null";

  while(cmd != "Q")
    % erase old jellyfish
    for i=1:length(jellyGraphics)
    delete(jellyGraphics(i));
    endfor
    % move jellyfish
    [xJelly,yJelly,thetaJelly] = moveJelly(level, xJelly, yJelly,thetaJelly, sizeJelly, mapHeight,mapWidth);
    % draw jellyfish
    jellyGraphics = drawJelly(xJelly,yJelly,thetaJelly,sizeJelly)


    % read keyboard
    cmd = kbhit(1);

    if( cmd == "w" || cmd == "a" ||  cmd == "d" || cmd == "s")

     % erase old captain
     for i =1:length(captainGraphics)
        delete(captainGraphics(i));
     endfor

    % move captain

    [xCapt,yCapt,thetaCapt] = moveCapt(cmd,xCapt,yCapt,thetaCapt,mapWidth,mapHeight);

    % draw new captain

    captainGraphics = drawCaptain(xCapt, yCapt, thetaCapt, sizeCapt);

  endif

  if( cmd == "u" || cmd == "o"|| cmd == "j" ||  cmd == "k" || cmd == "l")

     % erase old crab
     for i =1:length(crabGraphics)
        delete(crabGraphics(i));
     endfor

    % move crab

    [xCrab,yCrab,thetaCrab] = moveCrab(cmd,xCrab,yCrab,thetaCrab,mapWidth,mapHeight);

    % draw new captain

    crabGraphics = drawCrab(xCrab, yCrab, thetaCrab, sizeCrab);

    endif

fflush(stdout)
pause(.01)

  endwhile

  close all
  clear
endfunction
