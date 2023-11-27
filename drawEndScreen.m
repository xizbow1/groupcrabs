function retval = drawEndScreen (imgName, crabsCaught, numCrabs)
  
  drawMap(imgName);
  
  hold on
    myMessage = ['Yay! you caught ', num2str(crabsCaught), '/', num2str(numCrabs), ' crabs!'];
    textLoc1 = [350,750];
    textHandle = text(textLoc1(1), textLoc1(2), myMessage, 'FontSize', 30, 'Color', 'red');
    
    pause(5)
    
    delete(textHandle)
    textLoc2 = [450, 750];
    text(textLoc2(1), textLoc2(2), "do you want to play again? y/n", 'FontSize', 40, 'Color', 'red');
    
    % Read Keyboard
    while (1)
      
      commandwindow();
      cmd=kbhit(1);
      
      if (cmd == "y" || cmd == "Y")
        restart = 1;
        break;
      elseif (cmd == "n" || cmd == "N")
        restart == 0;
        break;
      endif
    endwhile
  hold off
  
  
endfunction
