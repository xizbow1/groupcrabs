function drawBox
  hold on;

  plot([10 ; 15],[10 ; 10],"r")
  plot([15 ; 15],[10 ; 15],"b")
  plot([10 ; 15],[15 ; 15],"r")
  plot([10 ; 10],[10 ; 15],"b")

  % draw the arms
  plot([10 ; 7],[15 ; 12],"r")
  plot([15 ; 18],[15 ; 12],"r")
  zoom(0.5)

  %fun with names
  xlabel ("CRAB");
  ylabel ("LOBSTER");
  title ("box plot ");

endfunction
