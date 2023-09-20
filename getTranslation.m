function T = getTranslation (thetaX, thetaY)

tPt1 = [1;0;0];
tPt2 = [0;1;0];
tPt3 = [thetaX;thetaY;1];

T = [tPt1,tPt2,tPt3];

endfunction
