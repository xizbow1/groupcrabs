function restart = drawEndScreen (imgName,crabsCaught,numCrabs)

%draw the end screen
  [imHeight, imWidth] = drawMap(imgName);

     hold on
       myMessage=['Good Job! You Caught  ', num2str(crabsCaught), ' out of ', num2str(numCrabs),' crabs!' ];
       %textLoc = [350,750];
       textLoc = [imHeight + 30,750];
       textHandle=text(textLoc(1), textLoc(2), myMessage, 'FontSize', 30, 'Color', 'red');

       pause(5)

       delete(textHandle)
       textLoc = [450,750];
       textHandle=text(textLoc(1), textLoc(2), 'Play again? Y/N', 'FontSize', 40, 'Color', 'red');

       %read keyboard
        while (1)

          %focus on command window
          commandwindow();

          cmd=kbhit(1);

          if( cmd == 'y' || cmd == 'Y')
            restart = 1;
            break;
          elseif(cmd == 'n' || cmd == 'N')
            restart = 0;
            break;
          endif

          pause(.1)

        endwhile

     hold off

endfunction


