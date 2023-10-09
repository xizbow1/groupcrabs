function crab = getCrab (crabSize)

%{

this function is intended to return a matrix of nX3. 
row 1 is the x pos, row 2 is the y pos, and row 3 is the z (which in this case is always 1)

the function uses "crabSize" to construct the points, by applying transformations to the variable
  so that when "crabSize" changes, the drawing is still together

}%



% computes and returns the crab

%{

%left side
cPt1 = [crabSize;crabSize;1]; %left shoulder
cPt2 = [-crabSize;crabSize;1]; %left hip
cPt3 = [-3*crabSize;crabSize;1]; %left foot

%right side
cPt4 = [-3*crabSize;-crabSize;1]; % right foot
cPt5 = [-crabSize;-crabSize;1]; % right hip
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
