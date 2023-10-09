function retval = isInBounds (x,y,mapWidth,mapHeight)
 
 retval = ((0 < x) && (x < mapWidth) && (0 < y) && (y < mapHeight))

endfunction
