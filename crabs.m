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
  healthCapt = 100;
  catches = 0;

 % Initialize crab location, heading and size

  xCrab = 1000; % crab center X
  yCrab = 1000; % crab center y
  thetaCrab = pi;
  sizeCrab = 30;

 % Initialize jelly  location, heading and size

  xJelly = rand*mapWidth;
  yJelly = 0;
  thetaJelly = -pi/2;
  sizeJelly = 25;
  jellySting = 2;

 % Draw the captain and initialize graphics handles


  [captainGraphics,xNet,yNet] = drawCaptain(xCapt, yCapt, thetaCapt, sizeCapt);
  crabGraphics = drawCrab(xCrab, yCrab, thetaCrab, sizeCrab);
  jellyGraphics = drawJelly(xJelly,yJelly,thetaJelly,sizeJelly);
  %initial command
  cmd ="null";

  % print health status
  healthLoc = [100,100];
  catchLoc = [100,175];
  healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', ...
  num2str(healthCapt)), 'FontSize', 12, 'Color', 'red');
  catchStatus = text(catchLoc(1), catchLoc(2), strcat('Crabs Caught = ', ...
  num2str(crabsCaught)), 'FontSize', 12, 'Color', 'red');


  while(1)

    %remove old and plot new health and points status to screen
    delete(healthStatus);
    delete(catchStatus);
    healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', num2str(healthCapt)), 'FontSize', 12, 'Color', 'red');

    catchStatus = text(catchLoc(1), catchLoc(2), strcat('Crabs Caught = ', num2str(crabsCaught)), 'FontSize', 12, 'Color', 'red');


    if ( getDist(xJelly,yJelly,xCapt,yCapt) < 3*sizeCapt )
      healthCapt = healthCapt - jellySting;
    endif

    % erase old jellyfish
    for i=1:length(jellyGraphics)
    delete(jellyGraphics(i));
    endfor
    % move jellyfish
    [xJelly,yJelly,thetaJelly] = moveJelly(level, xJelly, yJelly,thetaJelly, sizeJelly, mapHeight,mapWidth);
    % draw jellyfish
    jellyGraphics = drawJelly(xJelly,yJelly,thetaJelly,sizeJelly);

    if((cmd == "Q")||(getDist(xCrab, yCrab, xCapt, yCapt) <= 10))
      break
    endif
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

  if( getDist(xNet,yNet,xCrab,yCrab) < 2*sizeCapt ) %crab is caught
    %keep track of how many crabs are caught
    catches = catches +1;
    %erase old crab
    for i=1:length(crabGraphics)
    delete(crabGraphics(i));
    endfor
    %create a new crab. initialize new crab location, heading and size
    xCrab = rand*mapWidth;
    yCrab = rand*mapHeight;
    thetaCrab = -pi/2;
    sizeCrab = 50;
    %draw new crab
    crabGraphics = drawCrab(xCrab,yCrab,thetaCrab,sizeCrab);
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
