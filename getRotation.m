function R = getRotation (theta)

tPt1 = [cos(theta);sin(theta);0];
tPt2 = [-sin(theta);cos(theta);0];
tPt3 = [0;0;1];

R = [tPt1,tPt2,tPt3];

endfunction
