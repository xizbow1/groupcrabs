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

%*********************************************************
% Put your call to drawCapt() here ..... You must give drawCapt its
% input and output arguments.

captainGraphics = drawCaptain(xCapt, yCapt, thetaCapt, sizeCapt)

cmd="null";

while(cmd != "Q")

  cmd = kbhit()

  if(cmd == "w" || cmd == "a" || cmd == "d")
    % erase old captain
    for i=1:length(captainGraphics)
      set(captainGraphics(i),'Visible','off');
    endfor

    %move captain
  
    [xCapt, yCapt, thetaCapt] = moveCapt(cmd,xCapt,yCapt,thetaCapt);  

  endif
endwhile

%*******************************************************
endfunction
