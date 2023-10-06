# crabs
 This read me describes the functions that make up a kids computer called crabs. It describes their inputs/outputs and how they work.

crabs.m - This handles all of the actual rendering of the captain and initializes the graphics handles.
drawBox.m - This is an example of how to draw a box in Octave.
drawCaptain.m - crabs.m uses this to figure out how to draw the captain
drawLine.m - This is an example of how to draw a line in Octave.
drawMap.m - This draws the background (BGImage.png) and keeps it there.
getCapt.m - Returns the specifics of a given captain.
getTranslation.m - Returns a translation matrix for moving the captain.

Function: <b>getTranslation</b>: number1 number2 -> matrix <br>
Purpose : <b>Number1</b> represents the amount to shift in the x direction and <b>number2</b> the amount to shift in the y direction. getTranslation uses these numbers to create a 3x3 matrix thatwill translate an object as a 3xN when it multiplies the object matrix. <br>
Dependencies: none. <br>
Call : T = getTranslation(dx, dy) <br>
Side Effects: None <br>

Function: drawLine: vector, vector, color -> graphics handle <br>
