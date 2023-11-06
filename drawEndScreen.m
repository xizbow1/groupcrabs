function retval = drawEndScreen (imgName, crabsCaught, numCrabs)
  
  drawMap(imgName);
  hold on
    textLoc1 = [300,800];
    textHandle = text(textLoc1(1), textLoc1(2), "yay! you caught all the crabs!");
    pause(5)
    
    delete(textHandle)
    textLoc2 = [300, 900];
    text(textLoc2(1), textLoc2(2), "do you want to play again? y/n");
    
    while (1)
      cmd=kbhit(1);
      
      if (cmd == "y")
        restart = 1;
        break;
      elseif (cmd == "n")
        restart == 0;
        break;
      endif
    endwhile
  hold off
  
  
endfunction
