function level = getLevel ( )
  while(1)
  
      commandwindow();
      cmd = kbhit(1);
      
      if(str2num(cmd) > 0 && str2num(cmd) < 10)
        level = str2num(cmd);
        break;    
      endif
      
      pause(.1)
    endwhile
    
endfunction
