## Copyright (C) 2016 Force
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} test_Ising (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Force <force@force>
## Created: 2016-11-22

clear;close all; clc;

b1 = metropolis_potts(50, 10, 0.01, 4, 4);
b2 = metropolis_potts(50, 10, 0.5, 4, 4);
b3 = metropolis_potts(50, 10, 1, 4, 4);
b10 = metropolis_potts(50, 10, 10, 4, 4);

b18 = metropolis_potts(50, 10, 0.01, 8, 4);
b28 = metropolis_potts(50, 10, 0.5, 8, 4);
b38 = metropolis_potts(50, 10, 1, 8, 4);
b108 = metropolis_potts(50, 10, 10, 8, 4);

subplot(2,4,1);
imshow(b1,[0 3]);
colormap gray; axis equal; axis off;
title(["beta = 0.01 | 4-voisins"],'FontSize',12);

subplot(2,4,2);
imshow(b2,[0 3]);
colormap gray; axis equal; axis off;
title(["beta = 0.5 | 4-voisins"],'FontSize',12);

subplot(2,4,3);
imshow(b3,[0 3]);
colormap gray; axis equal; axis off;
title(["beta = 1 | 4-voisins"],'FontSize',12);

subplot(2,4,4);
imshow(b10,[0 3]);
colormap gray; axis equal; axis off;
title(["beta = 10 | 4-voisins"],'FontSize',12);

subplot(2,4,5);
imshow(b18,[0 3]);
colormap gray; axis equal; axis off;
title(["beta = 0.01 | 8-voisins"],'FontSize',12);

subplot(2,4,6);
imshow(b28,[0 3]);
colormap gray; axis equal; axis off;
title(["beta = 0.5 | 8-voisins"],'FontSize',12);

subplot(2,4,7);
imshow(b38,[0 3]);
colormap gray; axis equal; axis off;
title(["beta = 1 | 8-voisins"],'FontSize',12);

subplot(2,4,8);
imshow(b108,[0 3]);
colormap gray; axis equal; axis off;
title(["beta = 10 | 8-voisins"],'FontSize',12);

