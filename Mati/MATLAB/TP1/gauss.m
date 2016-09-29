function ret = gauss (I ,e ,t)
    ng = noyau_gaussien(e, t);
    ret = conv2(I,ng,'valid');
    
endfunction
