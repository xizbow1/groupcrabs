function inBounds = isInBounds (x,y,mapWidth,mapHeight,border)
 
 inBounds = ((border < x) && (x < (mapWidth - border)) && (border < y) && (y < (mapHeight - border)))

endfunction
