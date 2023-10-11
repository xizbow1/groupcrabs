function crab = getCrab (crabSize)

%{

this function is intended to return a matrix of nX3. 
row 1 is the x pos, row 2 is the y pos, and row 3 is the z (which in this case is always 1)

the function uses "crabSize" to construct the points, by applying transformations to the variable
  so that when "crabSize" changes, the drawing is still together

}%

% computes and returns the crab

%{

%body

  cPt1 = [1.5 * crabSize;crabSize;1]; %right shoulder
  cPt2 = [1.5 * crabSize;-crabSize;1]; %right foot
  cPt3 = [-1.5 * crabSize;-crabSize;1]; %left foot
  cPt4 = [-1.5 * crabSize;crabSize;1]; % left shoulder

%left claw

  cPt5 = [-4/5 * crabSize;crabSize;1]; % left claw, body anchor
  cPt6 = [crabSize;-crabSize;1]; % right foot

%head

  cPt7 = [crabSize; -crabSize/2; 1]; %
  cPt8 = [2 *crabSize; -crabSize/2;1]; %
  cPt9 = [ 2*crabSize; crabSize/2; 1]; %
  cPt10 = [crabSize; crabSize/2; 1]; %
  cPt11 = [ 0; 2*crabSize; 1]; %left
  cPt12 = [ 0; -2*crabSize; 1]; %right

%spear 

  cPt13 = [2*crabSize;-2*crabSize;1]; %spear point 
  cPt14 = [-crabSize;-2*crabSize;1];

%}

%crab = [cPt1,cPt2,cPt3,cPt4,cPt5,cPt6,cPt7,cPt8,cPt9,cPt10,cPt11,cPt12,cPt13,cPt14];

endfunction
