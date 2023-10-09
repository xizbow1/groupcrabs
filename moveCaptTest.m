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
## @deftypefn {} {@var{retval} =} moveCaptTest (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: xizbo <xizbo@SLAPTOP>
## Created: 2023-10-02

function [xCapt,yCapt,thetaCapt] = moveCaptTest (cmd, x, y, theta, width, height, size)

  xCapt = x;
  yCapt = y;
  thetaCapt = theta;
  dTheta = pi/6;
  dStep = 50;

  if(cmd=="w")
  %move forward
  xTemp = x + dStep*cos(theta);
  yTemp = y + dStep*sin(theta);

  if(isOnMap(xTemp,yTemp,width,height,size))
  xCapt=xTemp;
  yCapt=yTemp;
else
  endif

  thetaCapt = theta;
  elseif(cmd=="a")
  %rotate left
  thetaCapt = theta-dTheta;
  elseif(cmd=="d")
  %rotate right
  thetaCapt = theta+dTheta;
else
thetaCapt = theta;
endif
endfunction
