function crabs (level)

 % Crabs is a kids computer game where a fisherman, called the captain,
 % hunts for a very clever and powerful crab.
 % Draw the game map and initialize map dimensions.

 playgame = 1;
 while(playgame)

 
 [mapHeight , mapWidth] = drawMap( "BGImage.png" );

 numCrabs = level;
 numJellies = level;
 
 % Initialize captain location, heading and size
    xCapt = 1000;
    yCapt = 200;
    thetaCapt = -pi/2;
    sizeCapt = 50;
    healthCapt = 100;
    catches = 0;

 % Initialize crab location, heading and size
    %xCrab = 1000; % crab center X
    %yCrab = 1000; % crab center y
    %thetaCrab = pi;
    xCrab = rand(1,numCrabs)*mapWidth;
    yCrab = 0.75*mapHeight + rand(1,numCrabs)*mapHeight/4;
    thetaCrab = ones(1,numCrabs)*(pi);
    isCrabCaught = zeros(1,numCrabs);
    sizeCrab = 30;

 % Initialize jelly  location, heading and size
    xJelly = rand(1,numJellies)*mapWidth;
    yJelly = mapHeight + rand(1,numJellies)*mapHeight;
    thetaJelly = ones(1,numCrabs)*(-pi/2);
    sizeJelly = 25;
    jellySting = 2;

 %Draw the captain and initialize graphics handles
    [captainGraphics,xNet,yNet] = drawCaptain(xCapt, yCapt, thetaCapt, sizeCapt);
 %draw crabs
    for k = 1:numCrabs
      if(!isCrabCaught(k))
        crabGraphics(:,k) = drawCrab(xCrab(k), yCrab(k), thetaCrab(k), sizeCrab);
      endif
    endfor
  %draw jelly
  for j = 1:numJellies
    jellyGraphics(:,j) = drawJelly(xJelly(j),yJelly(j),thetaJelly(j),sizeJelly);
  endfor
  %initial command
  cmd ="null";

  % print health status
  healthLoc = [100,100];
  catchLoc = [100,175];
  healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', ...
  num2str(healthCapt)), 'FontSize', 12, 'Color', 'red');
  catchStatus = text(catchLoc(1), catchLoc(2), strcat('Crabs Caught = ', ...
  num2str(catches)), 'FontSize', 12, 'Color', 'red');


  while(1)

    %remove old and plot new health and points status to screen
    delete(healthStatus);
    delete(catchStatus);
    healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', num2str(healthCapt)), 'FontSize', 12, 'Color', 'red');

    catchStatus = text(catchLoc(1), catchLoc(2), strcat('Crabs Caught = ', num2str(catches)), 'FontSize', 12, 'Color', 'red');
  
    % check for jelly collision with capt
    for j = 1:numJellies
      if ( getDist(xJelly(j),yJelly(j),xCapt,yCapt) < 3*sizeCapt )
        healthCapt = healthCapt - jellySting;
      endif
    endfor

    % erase old jellyfish
    for i=1:numJellies
      for j=1:length(jellyGraphics(:,i))
        delete(jellyGraphics(j,i));
      endfor
    endfor
  
    % move jellyfish
    for j = 1:numJellies
      [xJelly(j),yJelly(j),thetaJelly(j)] = moveJelly(level, xJelly(j), yJelly(j),thetaJelly(j), sizeJelly, mapHeight,mapWidth);
      
      % draw jellyfish
      jellyGraphics(:,j) = drawJelly(xJelly(j),yJelly(j),thetaJelly(j),sizeJelly);
    endfor
    if((cmd == "Q"))
      break
    endif
    
    % read keyboard
    commandwindow();
    cmd = kbhit(1);
    if( cmd == "w" || cmd == "a" ||  cmd == "d" || cmd == "s")
    
      % erase old captain
      for i =1:length(captainGraphics)
        delete(captainGraphics(i));
      endfor

    % move captain

    [xCapt,yCapt,thetaCapt] = moveCapt(cmd,xCapt,yCapt,thetaCapt,mapWidth,mapHeight);

    % draw new captain

    [captainGraphics,xNet,yNet] = drawCaptain(xCapt, yCapt, thetaCapt, sizeCapt);

  endif

  for k=1:numCrabs
      
	    if( !isCrabCaught(k) && getDist(xNet,yNet,xCrab(k),yCrab(k)) < 7*sizeCapt )

        % erase the old crab as already done in crabs
          for i=1:length(crabGraphics(:,k))
            delete(crabGraphics(i,k));
          endfor

        % compute the crab’s angle to the net with getTheta and the components suggested above
          thetaCrab(k) = getTheta(xNet - xCrab(k), yNet - yCrab(k));
      
        % call moveCrab(). To move backwards use cmd =”k”
          [xCrab(k), yCrab(k), thetaCrab(k)] = moveCrab("k", xCrab(k), yCrab(k), thetaCrab(k), mapWidth, mapHeight);

        % draw the crab as already done in crabs
          crabGraphics(:,k) = drawCrab(xCrab(k), yCrab(k), thetaCrab(k), sizeCrab);
      endif
      
    endfor
  
  for k = 1:numCrabs 
 
    if(!isCrabCaught(k) && (getDist(xNet,yNet,xCrab(k),yCrab(k)) < 2*sizeCapt ))%crab is caught
      %keep track of how many crabs are caught
        isCrabCaught(k)=1;
        catches = catches +1;
      
      %erase old crab
        for i=1:length(crabGraphics(:,k))
          delete(crabGraphics(i,k));
        endfor
          
    endif
  endfor

fflush(stdout);
pause(.01)

  endwhile
 endwhile
  close all
  clear
endfunction
