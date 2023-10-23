# crabs
 This read me describes the functions that make up a kids computer called crabs. It describes their inputs/outputs and how they work.

<br>crabs.m - This handles all of the actual rendering of the captain and initializes the graphics handles.
<br>drawBox.m - This is an example of how to draw a box in Octave.
<br>drawCaptain.m - crabs.m uses this to figure out how to draw the captain
<br>drawCrab.m - 
<br>drawJelly.m - 
<br>drawLine.m - This is an example of how to draw a line in Octave.
<br>drawMap.m - This draws the background (BGImage.png) and keeps it there.
<br>getCapt.m - Returns the specifics of a given captain.
<br>getCrab.m - Returns the specifics of a given crab 🦀
<br>getDist.m -
<br>getJelly.m -
<br>getRotation.m -
<br>getTranslation.m - Returns a translation matrix for moving the captain.
<br>isInBounds.m -
<br>moveCapt.m -
<br>moveCrab.m -
<br>moveJelly.m -

<br>
<b>getTranslation:</b> number1 number2 -> matrix 
<br><b>Purpose:</b> number 1 represents the shift in X, and number 2 represents the shift in Y. Returns a 3x3 matrix that can be used to translate an object stored as a matrix with 3 rows and any amount of columns, if multiplied together.
<br><b>Dependancies:</b> none
<br><b>Call:</b> T = getTranslation(dx,dy) 
<br><b>Side Effects:</b> None 
<br>
<br><b>getRotation:</b> number -> matrix
<br><b>Purpose:</b> numer represents theta, the angle to rotate the captain by. Returns a 3x3 matrix that can be used to rotatr and object stored as a matrix with 3 rows and any amount of columns, if multiplied together.
<br><b>Dependancies:</b> none
<br><b>Call:</b> R = getRotation(theta)
<br><b>Side Effects:</b> None 

<b>drawCaptain:</b> x, y, theta, size -> vector
<br><b>Purpose:</b> Return the values of all of the different points to create a captain shape.
<br><b>Dependancies:</b> none
<br><b>Call:</b> captainGraphics = drawCaptain(xCapt, yCapt, thetaCapt, sizeCapt)
<br><b>Side Effects:</b> None 
<br>
<b>drawCrab:</b> x, y, theta, size -> vector
<br><b>Purpose:</b> Return the values of all of the different points to create a crab shape.
<br><b>Dependancies:</b> none
<br><b>Call:</b> crabGraphics = drawCrab(xCrab, yCrab, thetaCrab, sizeCrab)
<br><b>Side Effects:</b> None 
<br>
