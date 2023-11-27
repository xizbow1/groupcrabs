function level = drawStartScreen (imgName)
  
  drawMap(imgName);
  hold on
    messageLoc = [450,750];
    myMessage = ['Enter a Level 1-9 '];
    myText = text(messageLoc(1), messageLoc(2), myMessage, 'FontSize', 30, 'Color', 'red');
    level = getLevel();
    delete(myText)
    myMessage = ['OK, Level = ', ' ', num2str(level)];
    text(messageLoc(1), messageLoc(2), myMessage, 'FontSize', 30, 'Color', 'red');
    pause(2)
   
  hold off
endfunction
