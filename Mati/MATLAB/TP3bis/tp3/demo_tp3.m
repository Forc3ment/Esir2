clc; clear all; close all; rehash
pkg load image;
% Exercice 1
% ==============
% Test d'extraction de niveau 0 sur une image binaire
% ---------
%I = double(imread('images/images_binaires_pour_initialisation/image_binaire.bmp'));
%I_Phi = distance_signee(I);
%figure;
%imshow(I_Phi, []);
%I_niveau0 = extraction_niveau0(I_Phi);
%figure;
%imshow(I_niveau0, []);

% Test d'extraction de niveau 0 sur une image de cercle
% ---------
%n = 100;
%[X, Y] = ndgrid(1:n, 1:n);
%r = n/3;
%c = [n/2 n/2]
%Cercle_Phi = sqrt((X-c(1)).^2 + (Y-c(2)).^2) - r;
%figure;
%imshow(Cercle_Phi, []);
%figure;
%contour(Cercle_Phi, [0, 0]); axis equal; axis off;
%Cercle_niveau0 = extraction_niveau0(Cercle_Phi);
%figure;
%imshow(Cercle_niveau0, []);

% Exercice 3
% ==============
% Partie 1
% ---------
%I = double(imread('images/images_binaires_pour_initialisation/image_binaire.bmp'));
%I_Phi = distance_signee(I);
%C_contraction = ones(size(I));
%C_expansion = zeros(size(I));
%dt = 0.5; % pas de discretisation
%nb_affiche = 1; % nombre d'iterations entre chaque affichage
%contraction_expansion(I_Phi, C_contraction, dt, nb_affiche); % 1000 iterations par defaut
%contraction_expansion(I_Phi, C_expansion, dt, nb_affiche); % 1000 iterations par defaut

% Partie 2
% ----------
%I = double(imread('images/images_binaires_pour_initialisation/image_binaire.bmp'));
%I_Phi = distance_signee(I);
%C_contraction = ones(size(I));
%C_expansion = -1.*C_contraction;
%C_aleatoire = randn(size(I));
%C_stable = ones(size(I));
%C_stable((end/3):(2*end/3),:) = 0 ;
%C_stable((2*end/3):end,:) = -1 ;
%dt = 0.5; % pas de discretisation
%nb_affiche = 1; % nombre d'iterations entre chaque affichage
%contraction_expansion(I_Phi, C_contraction, dt, nb_affiche); % 1000 iterations par defaut
%contraction_expansion(I_Phi, C_expansion, dt, nb_affiche); % 1000 iterations par defaut
%contraction_expansion(I_Phi, C_aleatoire, dt, nb_affiche); % 1000 iterations par defaut
%contraction_expansion(I_Phi, C_stable, dt, nb_affiche);

% Exercice 4
% ==============
% Partie 2
% ---------
%I = double(imread('images/images_binaires_pour_initialisation/serpent.bmp'));
%I_Phi = distance_signee(I);
%dt = 0.5; % pas de discretisation
%nb_affiche = 100; % nombre d'iterations entre chaque affichage
%mouvement_par_courbure(I_Phi, dt, nb_affiche, 5000);

% Exercice 4
% ==============
I = double(imread('images/pour_tester_segmentation/test_seg1.png'));
Phi = ones(size(I));
Phi(2:end-1, 2:end-1) = 0;
dt = 0.5;
alpha = 3;
C_contraction = ones(size(I));
nb_affiche = 100;
n = 5000;
segmentation(I, Phi, dt, alpha, C_contraction, nb_affiche, n);