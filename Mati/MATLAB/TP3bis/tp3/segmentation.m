function S = segmentation(I, Phi, dt, alpha, C, nb_affiche, n),
% I = image a segmenter
% C = champ de vitesse
% alpha = 
sigma = 2;
taille_noyau = 3 * sigma; % pour ne pas couper la gaussiene
gI = 1 ./ (1 + norm_grad(grad(gauss(I, sigma, taille_noyau))));

for t=0:n-1
  Phi = Phi + dt * (gI .* (alpha .* courbure(Phi) + C));
  
  % on affiche tous les nb_affiche
  if (mod(t,nb_affiche)==0)
    niveau0 = extraction_niveau0(Phi);
    subplot(1,3,3);
    imshow(niveau0,[]);title('Niveau zéro');
    subplot(1,3,2);
    imshow(Phi,[]);title('Phi');
    subplot(1,3,1);
    surf(double(Phi));title('Phi'); axis([0 100 0 100 -20 40]);
    drawnow;
  end
end