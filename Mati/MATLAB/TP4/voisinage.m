## Copyright (C) 2016 Furtys
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
## @deftypefn {Function File} {@var{retval} =} voisinage (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Furtys <furtys@VM-Furtys>
## Created: 2016-11-08

function V = voisinage (X, i, j, o)

V=[];

if i ~= 1
  V = [V X(i-1, j)];
endif
if j ~= 1
  V = [V X(i, j-1)];
endif
if i ~= size(X, 1)
  V = [V X(i+1, j)];
endif
if j ~= size(X, 2)
  V = [V X(i, j+1)];
endif

if (o == 8)
  if ((i ~= 1) && (j ~= 1))
    V = [V X(i-1, j-1)];
  endif
  if ((i ~= size(X, 1)) && (j ~= 1))
    V = [V X(i+1, j-1)];
  endif
  if ((i ~= size(X, 1)) && (j ~= size(X, 2)))
    V = [V X(i+1, j+1)];
  endif
  if ((i ~= 1) && (j ~= size(X, 2)))
    V = [V X(i-1, j+1)];
  endif
endif

endfunction
