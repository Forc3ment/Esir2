clear all; close all; clc; rehash;

#---Distance signée à un cercle---

n = 100;
[X, Y] = ndgrid(1:n, 1:n);
r = n/3;
c = [n/2 n/2];
Phi = sqrt( (X-c(1)) .^2 + (Y-c(2)).^2 ) - r;

#niveau0 = extraction_niveau0(Phi);
#contour(Phi, [0 0]); axis equal; axis off;


#figure; imshow(niveau0, []);

#---Contraction Expansion---

I = double(imread('images/images_binaires_pour_initialisation/image_binaire.bmp'));
phi = distance_signee(I);
C = -1;
dt = 0.1;
nb_affiche = 1;
n = 1000;

#contraction_expansion(phi, C, dt, nb_affiche, n);

#---Mouvement par courbure---

I = double(imread('images/images_binaires_pour_initialisation/serpent.bmp'));
phi = distance_signee(I);
C = -1;
dt = 0.1;
nb_affiche = 100;
n = 100000;

#mouvement_par_courbure(phi, dt, nb_affiche, n);

#---Segmentation---

e=3;
dt = 0.1;
alpha = 2;
nb_affiche = 100;
n = 100000;

I = double(imread('images/pour_tester_segmentation/test_seg1_bruit.jpg'));

G = segmentation(I, Phi, e, dt, alpha, C, n, nb_affiche);
figure; imshow(G, []);

