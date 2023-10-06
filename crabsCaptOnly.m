## Copyright (C) 2023 xizbo
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} crabsCaptOnly (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: xizbo <xizbo@SLAPTOP>
## Created: 2023-10-02

function crabsCaptOnly ()
  [mapHeight,mapWidth] = drawMap("BGImage.png");
  xCapt = 1000;
  yCapt = 500;
  thetaCapt = -pi/2;
  sizeCapt = 50;
  captGraphics = drawCaptain(xCapt, yCapt, thetaCapt, sizeCapt);
  cmd="null";

  while(cmd != "Q")
  cmd = kbhit();
  if(cmd == "w" || cmd == "a" || cmd == "d")
  for i=1:length(captGraphics)
    set(captGraphics(i), 'Visible','off');
  endfor
  [xCapt,yCapt,thetaCapt] = moveCaptTest(cmd,xCapt,yCapt,thetaCapt,mapWidth,mapHeight,sizeCapt);
  captGraphics = drawCaptain(xCapt,yCapt,thetaCapt,sizeCapt);
endif
endwhile


endfunction
