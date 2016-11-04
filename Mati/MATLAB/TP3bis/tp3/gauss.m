function G = gauss(I, sigma, taille_noyau)
ng = noyau_gaussien(sigma, taille_noyau);
G = conv2(I, ng, 'same');
endfunction