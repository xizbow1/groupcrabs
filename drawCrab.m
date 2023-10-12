function crabGraphics = drawCrab (xCrab , yCrab , thetaCrab , sizeCrab)

  % This function returns a vector of graphics handles called crabGrapics.
  % The ith vector entry contains the graphics handle of ith line of the crab.

  % Use your code from last week to get the crab matrix
  % for a crab of dimension sizeCrab. Notice that
  % sizeCrab is a parameter passed into drawCrab.

  crab = getCrab(sizeCrab);

  % TODO : Rotate crab from zero heading to heading thetaCrab

  R = getRotation(thetaCrab);
  rotCrab = R*crab;

  % shift Crab to new location

  T = getTranslation(xCrab,yCrab);
  crab = T*rotCrab;

  % Extract the crab points from the crab matrix crab.
  pt1=crab( : , 1);
  pt2=crab( : , 2);
  pt3=crab( : , 3);
  pt4=crab( : , 4);
  pt5=crab( : , 5);
  pt6=crab( : , 6);
  pt7=crab( : , 7);
  pt8=crab( : , 8);
  pt9=crab( : , 9);
  pt10=crab( : , 10);

  % Draw the crab and set the return vector of graphics handles.
  crabGraphics(1) = drawLine(pt1 , pt2 , "r");
  crabGraphics(2) = drawLine(pt2 , pt3 , "r");
  crabGraphics(3) = drawLine(pt3 , pt4 , "r");
  crabGraphics(4) = drawLine(pt4 , pt1 , "r");
  crabGraphics(5) = drawLine(pt5 , pt6 , "r");
  crabGraphics(6) = drawLine(pt6 , pt7 , "r");
  crabGraphics(7) = drawLine(pt8 , pt9 , "r");
  crabGraphics(8) = drawLine(pt9 , pt10 , "r");
  crabGraphics(9) = drawLine(pt9 , pt10 , "r");


endfunction
