clear all; close all; clc; rehash;

dx = 0.05; %pas spatial de discrétisation
dt1 = 0.00125; %pas temporel de discrétisation
dt2 = 0.0012; %pas temporel de discrétisation
dt = 0.0013; %pas temporel de discrétisation
r = dt/(dx*dx);
x=-1:dx:1;
u0=sin(x*5)+x; %signal 1D de test

%figure; plot(x,u0,'-+'); %affichage du signal
%diffusion1D(u0,100,dt,dx);
%diffusion1D(u0,100,dt1,dx);
%diffusion1D(u0,100,dt2,dx);

%dt = 0.25; %pas temporel de discrétisation
%dt1 = 0.35; %pas temporel de discrétisation
%dt2 = 0.15; %pas temporel de discrétisation
%I = double(imread('cerveau.jpg'));
%diffusion2D(I,100,dt);
%diffusion2D(I,100,dt1);
%diffusion2D(I,100,dt2);


I1 = double(imread('cerveau.jpg'));
I2 = double(imread('fleur.png'));
e = 4;
t = (6*e)+1;
subplot(1,2,1); imshow(I1,[]);
subplot(1,2,2); imshow(gauss(I1,e,t),[]);  
