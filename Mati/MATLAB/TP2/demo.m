clear all; close all; clc; rehash;

I = double(imread('gatlin.png'));

%Gradient, mise en évidence des fortes variations.
I1 = gradient(I);

%Laplacien,detecte les contours. le lapalacien correspond à la dérivée seconde. Quand la dérivée première est max, le laplacien est nul.
I2 = laplacien(I);

figure;
subplot(1,3,1); imshow(I,[]);
subplot(1,3,2); imshow(I1,[]);
subplot(1,3,3); imshow(I2,[]);

%Restauration de Tikhonov,
I3 = double(imread('gatlin_noisy.png'));
dt = 0.1;
lambda = 0.5;
seuil = 10; %seuil de différence d'énergie pour le quel s'arrète le programme.
%tikhonov(I3,seuil,dt,lambda);

%Calcul d'un SNR maximal.
lambdaTestSnr1 = 0.135;
lambdaTestSnr2 = 0.235;
lambdaTestSnr3 = 0.335;

I4 = tikhonovND(I3,seuil,dt,lambdaTestSnr1);
snr1=snr(I,I4)
I5 = tikhonov(I3,seuil,dt,lambdaTestSnr2);
snr2=snr(I,I5)
I6 = tikhonovND(I3,seuil,dt,lambdaTestSnr3);
snr3=snr(I,I6)

figure;
subplot(2,2,1); imshow(I,[]); 
subplot(2,2,2); imshow(I4,[]);
subplot(2,2,3); imshow(I5,[]);
subplot(2,2,4); imshow(I6,[]);

%Restauration Phi.

X = zeros(256,256);
n = 200;
a = floor(n/3);
X(a:end-a,a:end-a) = 1;
sigma= 0.2;
X_bruit = X + sigma*randn(size(X));

seuil = 0.0001;
dt = 0.01;
epsilon = 0.01;
lambda = 3.1;

X_restored = restaurationPhi(X_bruit,seuil,dt,epsilon,lambda);
snr=snr(X,X_restored)

figure;
subplot(3,1,1); imshow(X,[]); 
subplot(3,1,2); imshow(X_restored,[]);
subplot(3,1,3); imshow(X_bruit,[]);

%Deconvolution

seuil = 0.0001;
dt = 0.01;
e = 4;
t = (6*e)+1;

I7=gauss(I,e,t);

deconvo(I7,seuil,dt,e,t);










