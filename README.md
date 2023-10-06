# crabs
 This read me describes the functions that make up a kids computer called crabs. It describes their inputs/outputs and how they work.

crabs.m - This handles all of the actual rendering of the captain and initializes the graphics handles.
drawBox.m - This is an example of how to draw a box in Octave.
drawCaptain.m - crabs.m uses this to figure out how to draw the captain
drawLine.m - This is an example of how to draw a line in Octave.
drawMap.m - This draws the background (BGImage.png) and keeps it there.
getCapt.m - Returns the specifics of a given captain.
getTranslation.m - Returns a translation matrix for moving the captain.


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
