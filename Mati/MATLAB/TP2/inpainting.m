
close all;clear; clc;

name='cameraman.png';

M = double(imread(name));
% amount of removed pixels.
rho = .5;
%random mask, mask==1 for removed pixels
mask = zeros(size(M));
sel = randperm(numel(M)); sel = sel(1:round(rho*numel(M)));
mask(sel) = 1;

% remove pixels
y = M;
y(mask==1) = 0;
Msobolev = y;

lambda = 3;
e=0.01;
dt = 0.1;

figure;
imshow(uint8(M));
figure;
imshow(uint8(y));
figure;

for i=1:1000  
    G = -lambda*div(grad(Msobolev) ./ repmat((sqrt(e.+gradient(Msobolev).^2)),1,1,2)); % gradient du terme de regularisaiton (� faire);
    Msobolev = Msobolev - dt*G;
    
    %reprojection sur les donn�es (� faire)
    Msobolev(mask==0) = y(mask==0) ;
    
    imshow(Msobolev,[]);drawnow;
end

