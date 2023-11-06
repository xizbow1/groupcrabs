function level = drawStartScreen (imgName)
  
  drawMap(imgName);
  hold on
    level = getLevel();
    levelLoc = [400,800];
    %text(LevelLoc(1), LevelLoc(2), strcat())
    pause(2)
  hold off
endfunction
