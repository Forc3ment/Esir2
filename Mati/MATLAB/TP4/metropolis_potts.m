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
## @deftypefn {Function File} {@var{retval} =} metropolis_potts (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Furtys <furtys@VM-Furtys>
## Created: 2016-11-08

function X = metropolis_potts (n, n_iter, beta, nb_etats, ordre_voisinage)

  if (nargin < 5)
    ordre_voisinage = 4;
  end
  if (nargin < 4)
    nb_etats = 2;
  end
  if (nargin < 3)
    beta = 1;
  end
  
  X = randi(nb_etats, n, n) - 1;

  for t=0:n_iter
    for i=1:n
      for j=1:n
        V = voisinage(X, i, j, ordre_voisinage);
        X(i, j) = sous_metropolis(X(i, j), V, beta, nb_etats);
        
        %imshow(X, []); drawnow;
      endfor
    endfor
  endfor
  
endfunction