function crabs ()

 % Crabs is a kids computer game where a fisherman, called the captain,
 % hunts for a very clever and powerful crab.
 % Draw the game map and initialize map dimensions.

[mapHeight , mapWidth] = drawMap( "BGImage.png" );

 % Initialize captain location, heading and size

 xCapt = 1000;
 yCapt = 1000;
 thetaCapt = -pi/2;
 sizeCapt = 50;

 % Draw the captain and initialize graphics handles

  captainGraphics = drawCaptain(xCapt, yCapt, thetaCapt, sizeCapt);
 
  %initial command 
  cmd="null";
  
  while(cmd != "Q")
    
    % read keyboard
    cmd = kbhit();
    
    if( cmd == "w" || cmd == "a" ||  cmd == "d" || cmd == "s")
     
     % erase old captain
     for i =1:length(captainGraphics)
        set(captainGraphics(i),'Visible','off');  
     endfor
    
    % move captain 
    
    [xCapt,yCapt,thetaCapt] = moveCaptTest(cmd,xCapt,yCapt,thetaCapt);
    
    % draw new captain
    
    captainGraphics = drawCaptain(xCapt, yCapt, thetaCapt, sizeCapt);
    
    endif
    
    
    
  endwhile
  

close all
endfunction
