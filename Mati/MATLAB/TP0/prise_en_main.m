clear;
clc;
close all;

u = [2 5 3 8 1]
u_gauche = [u(2:end) u(end)]
u_droite = [u(1) u(1:end-1)]

A = zeros(2,3)
A(1,1) = 1
A(2,:) = [ 3 5 8]
A(:)

B = rand(2,3)
C = A.*B

I = rand(256,256);
imshow(I)

I(I < .5) = 0;
I(I >= .5) = 1;
figure; imshow(I);

V = 0:255
disp(['Dimensions de V : ' num2str(size(V))])
I = repmat(V, 256, 1);
disp(['Dimensions de I : ' num2str(size(I))])
figure; imshow(I, [0 255]);
I(128,:) = 255;
figure; imshow(I, [0 255]);
I(100:140,:) = 255*rand(41,256);
figure; imshow(I, [0 255]);

F = imread('fleur.png');
figure;
subplot(2,2,1); imshow(F);
subplot(2,2,2); imshow(F(:,:,1)); title('Composante rouge')
subplot(2,2,3); imshow(F(:,:,2)); title('Composante verte')
subplot(2,2,4); imshow(F(:,:,3)); title('Composante bleue')

F2 = F;
F2(:,:,1) = F(:,:,3);
F2(:,:,3) = F(:,:,1);
figure; imshow(F2);
