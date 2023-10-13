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
  pt11=crab( : , 11);
  pt12=crab( : , 12);
  pt13=crab( : , 13);
  pt14=crab( : , 14);
  pt15=crab( : , 15);
  pt16=crab( : , 16);
  pt17=crab( : , 17);
  pt18=crab( : , 18);
  pt19=crab( : , 19);
  pt20=crab( : , 20);
  pt21=crab( : , 21);
  pt22=crab( : , 22);
  pt23=crab( : , 23);
  pt24=crab( : , 24);
  pt25=crab( : , 25);
  pt26=crab( : , 26);
  pt27=crab( : , 27);
  pt28=crab( : , 28);

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
  crabGraphics(10) = drawLine(pt11 , pt12 , "r");
  crabGraphics(11) = drawLine(pt12 , pt13 , "r");
  crabGraphics(12) = drawLine(pt14 , pt15 , "r");
  crabGraphics(13) = drawLine(pt15 , pt16 , "r");
  crabGraphics(14) = drawLine(pt16 , pt17 , "r");
  crabGraphics(15) = drawLine(pt18 , pt19 , "r");
  crabGraphics(16) = drawLine(pt19 , pt20 , "r");
  crabGraphics(17) = drawLine(pt20 , pt21 , "r");


endfunction
