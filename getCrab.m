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
  cPt6 = [-1.5 * crabSize;2 * crabSize;1]; % left claw, middle
  cPt7 = [-4/5 * crabSize;3 * crabSize; 1]; % left claw, point

%right claw

 
  cPt8 = [4/5 * crabSize;crabSize;1]; % right claw, body anchor
  cPt9 = [1.5 * crabSize;2 * crabSize; 1]; % right claw, middle
  cPt10 = [-4/5 * crabSize;3 * crabSize; 1]; % right claw, point

%}

%crab = [cPt1,cPt2,cPt3,cPt4,cPt5,cPt6,cPt7,cPt8,cPt9,cPt10,];

endfunction
