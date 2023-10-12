function crabGraphics = drawCrab (xCrab , yCrab , thetaCrab , sizeCrab)

  % This function returns a vector of graphics handles called crabainGrapics.
  % The ith vector entry contains the graphics handle of ith line of the crabain.

  % Use your code from last week to get the crabain matrix
  % for a crabain of dimension sizeCrab. Notice that
  % sizeCrab is a parameter passed into drawCrab.

  crab = getCrab(sizeCrab);

  % TODO : Rotate crabain from zero heading to heading thetaCrab

  R = getRotation(thetaCrab);
  rotCrab = R*crab;

  % shift Crabain to new location

  T = getTranslation(xCrab,yCrab);
  crab = T*rotCrab;

  % Extract the crabain points from the crabain matrix crab.
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
  pt11=crab( : , 11);
  pt12=crab( : , 12);
  pt13=crab( : , 13);
  pt14=crab( : , 14);

  % Draw the crabain and set the return vector of graphics handles.
  crabainGraphics(1) = drawLine(pt1 , pt2 , "k");
  crabainGraphics(2) = drawLine(pt2 , pt3 , "k");
  crabainGraphics(3) = drawLine(pt2 , pt5 , "k");
  crabainGraphics(4) = drawLine(pt4 , pt5 , "k");
  crabainGraphics(5) = drawLine(pt5 , pt6 , "k");
  crabainGraphics(6) = drawLine(pt6 , pt1 , "k");
  crabainGraphics(7) = drawLine(pt7 , pt8 , "k");
  crabainGraphics(8) = drawLine(pt8 , pt9 , "k");
  crabainGraphics(9) = drawLine(pt9 , pt10 , "k");
  crabainGraphics(10) = drawLine(pt1 , pt11 , "k");
  crabainGraphics(11) = drawLine(pt6 , pt12 , "k");
  crabainGraphics(12) = drawLine(pt13 , pt14 , "k");

endfunction
