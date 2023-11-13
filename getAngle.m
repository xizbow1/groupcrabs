
function theta = getAngle (xNet,yNet,xCrab,yCrab)

  xDanger = xNet - xCrab;
  yDanger = yNet - yCrab;

  if (xDanger == 0 || yDanger == 0)

  if(xDanger == 0 && yDanger == 0)
    theta=0;
  elseif(xDanger == 0 && yDanger != 0)
    if(yDanger > 0)
      theta=pi/2;
    else
        theta = 3*pi/2;
    endif
  elseif(xDanger != 0 && yDanger == 0)
    if(xDanger > 0)
      theta = 0;
    else
    theta = pi;
  else

  if(xDanger > 0 && yDanger > 0)
    theta = alpha;
  elseif(xDanger < 0 && yDanger > 0)
    theta = pi - alpha;
  elseif(xDanger < 0 && yDanger < 0)
    theta = pi + alpha;
  else
      theta = 2*pi - alpha;
  endif

endfunction
