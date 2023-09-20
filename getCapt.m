function capt = getCapt (captSize)
% computes and returns the captain

%left side
cPt1 = [captSize;captSize;1]; %left shoulder
cPt2 = [-captSize;captSize;1]; %left hip
cPt3 = [-3*captSize;captSize;1]; %left foot

%right side
cPt4 = [-3*captSize;-captSize;1]; % right foot
cPt5 = [-captSize;-captSize;1]; % right hip
cPt6 = [captSize;-captSize;1]; % right foot

%head
cPt7 = [captSize; -captSize/2; 1]; %
cPt8 = [2 *captSize; -captSize/2;1]; %
cPt9 = [ 2*captSize; captSize/2; 1]; %
cPt10 = [captSize; captSize/2; 1]; %
cPt11 = [ 0; 2*captSize; 1]; %left
cPt12 = [ 0; -2*captSize; 1]; %right

%spear 
cPt13 = [2*captSize;-2*captSize;1]; %spear point 
cPt14 = [-captSize;-2*captSize;1];



capt = [cPt1,cPt2,cPt3,cPt4,cPt5,cPt6,cPt7,cPt8,cPt9,cPt10,cPt11,cPt12,cPt13,cPt14];

endfunction
