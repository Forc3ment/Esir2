clear;close all;clc;

%initialisation des images 
n=10000;
A = rand(n,n); %images al�atoires
B = rand(n,n);

% Cr�ation d'une nouvelle image C �gale au produit terme � terme de A et B
% et calcul de la somme des termes de C

% (1) avec parcours des images (boucle for) 
tic
C = zeros(n,n);
somme_boucle = 0;
for i=1:n
    for j=1:n
        C(i,j) = A(i,j) * B(i,j);
        somme_boucle = somme_boucle + C(i,j);
    end
end
temps_boucle = toc;


% (2) sans parcours explicite des images , en utilisant les fonctions matlab ad�quates 
tic
C = A.*B;
somme_matlab = sum(C(:));
temps_matlab = toc;

% Comparaison des temps de calcul
disp([' Avec boucle : somme=' num2str(somme_boucle) '  calcul en ' num2str(temps_boucle) ' secondes']);
disp([' Sans boucle : somme=' num2str(somme_matlab) '  calcul en ' num2str(temps_matlab) ' secondes']);

disp(['Soit un calcul ' num2str(temps_boucle/temps_matlab) ' plus rapide !']);