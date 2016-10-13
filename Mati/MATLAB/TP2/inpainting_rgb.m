
close all;clear; clc;

name='parrot.png';
name_mask = "parrot-mask.png";

M = double(imread(name));

mask = double(imread(name_mask));

% remove pixels
y = M;

R=y(:,:,1);R(mask==1) = 0;y(:,:,1)=R;
G=y(:,:,2);G(mask==1) = 0;y(:,:,2)=G;
B=y(:,:,3);B(mask==1) = 0;y(:,:,3)=B;


Msobolev = M;

lambda = 3;
e=0.01;
dt = 0.1;

figure;
imshow(uint8(M));
figure;
imshow(uint8(y));
figure;

for i=1:1000  
    G(:,:,1) = -lambda*div(grad(Msobolev(:,:,1)) ./ repmat((sqrt(e.+gradient(Msobolev(:,:,1)).^2)),1,1,2)); % gradient du terme de regularisaiton (� faire);
    G(:,:,2) = -lambda*div(grad(Msobolev(:,:,2)) ./ repmat((sqrt(e.+gradient(Msobolev(:,:,2)).^2)),1,1,2)); % gradient du terme de regularisaiton (� faire);
    G(:,:,3) = -lambda*div(grad(Msobolev(:,:,3)) ./ repmat((sqrt(e.+gradient(Msobolev(:,:,3)).^2)),1,1,2)); % gradient du terme de regularisaiton (� faire);
    Msobolev = Msobolev - dt*G;
    
    %reprojection sur les donn�es (� faire)
    R=y(:,:,1);Rm=Msobolev(:,:,1);Rm(mask==0) = R(mask==0); Msobolev(:,:,1)=Rm;
    G=y(:,:,2);Gm=Msobolev(:,:,2);Gm(mask==0) = G(mask==0); Msobolev(:,:,2)=Gm;
    B=y(:,:,3);Bm=Msobolev(:,:,3);Bm(mask==0) = B(mask==0); Msobolev(:,:,3)=Bm;
    
    
    
    
    imshow(uint8(Msobolev));drawnow;
end

