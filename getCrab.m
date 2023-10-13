function crab = getCrab (crabSize)



%this function is intended to return a matrix of nX3. 
%row 1 is the x pos, row 2 is the y pos, and row 3 is the z (which in this case is always 1)

%the function uses "crabSize" to construct the points, by applying transformations to the variable
  %so that when "crabSize" changes, the drawing is still together

% computes and returns the crab



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
  cPt10 = [4/5 * crabSize;3 * crabSize; 1]; % right claw, point

% left legs

  cPt11 = [-1.5 * crabSize;0.5 * crabSize;1]; % top left body
  cPt12 = [-2.5 * crabSize;0.5 * crabSize;1]; % top left elbow
  cPt13 = [-3.5 * crabSize; -0.25 * crabSize;1]; % top left toe

  cPt14 = [-1.5 * crabSize;0;1]; % mid left body
  cPt15 = [-2.5 * crabSize;0;1]; % mid left elbow
  cPt16 = [-3.5 * crabSize;-0.75 * crabSize;1]; % mid left toe

  cPt17 = [-1.5 * crabSize]; % bottom left body
  cPt18 = [-2.5 * crabSize]; % bottom left elbow
  cPt19 = [-3.5 * crabSize]; % bottom left toe

% right legs

  cPt20 = [1.5 * crabSize;0.5 * crabSize;1]; % top left body
  cPt21 = [2.5 * crabSize;0.5 * crabSize;1]; % top left elbow
  cPt22 = [3.5 * crabSize; -0.25 * crabSize;1]; % top left toe

  cPt23 = [1.5 * crabSize;0;1]; % mid left body
  cPt24 = [2.5 * crabSize;0;1]; % mid left elbow
  cPt25 = [3.5 * crabSize;-0.75 * crabSize;1]; % mid left toe

  cPt26 = [1.5 * crabSize]; % bottom left body
  cPt27 = [2.5 * crabSize]; % bottom left elbow
  cPt28 = [3.5 * crabSize]; % bottom left toe

 
crab = [cPt1,cPt2,cPt3,cPt4,cPt5,cPt6,cPt7,cPt8,cPt9,cPt10,cPt11,cPt12,cPt13,cPt14,cPt15,cPt16,cPt17,cPt18,cPt19,cPt20,cPt21,cPt22,cPt23,cPt24,cPt25,cPt26,cPt27,cPt28];

endfunction
