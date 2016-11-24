clear;close all; clc;

%definition des 16 images x^i
x1 = [0 0; 0 0]; x2 = [0 1; 0 0]; x3 = [0 0; 0 1]; x4 = [0 0; 1 0]; x5 = [1 0; 0 0];
x6 = [0 1; 0 1]; x7 = [1 1; 0 0]; x8 = [0 1; 1 0]; x9 = [0 0; 1 1]; x10 = [1 0; 0 1];
x11 = [1 0; 1 0]; x12 = [1 0; 1 1]; x13 = [1 1; 1 0]; x14 = [1 1; 0 1]; x15 = [0 1; 1 1];
x16 = [1 1; 1 1];

%on les met dans une structure x
x{1} = x1; x{2} = x2; x{3} = x3; x{4} = x4;
x{5} = x5; x{6} = x6; x{7} = x7; x{8} = x8;
x{9} = x9; x{10} = x10; x{11} = x11; x{12} = x12;
x{13} = x13; x{14} = x14; x{15} = x15; x{16} = x16;

%affichage des 16 images 2x2
for k=1:16
    subplot(2,8,k)
    imshow(x{k},[0 1]);
    colormap gray; axis equal; axis off;
    %title(['$x^{' num2str(k) '}$'],'interpreter','latex','FontSize',18);
end
drawnow;
% pause

%nombre d'echantillons souhaites
n_echant=1000;
%figure;
p = zeros(1,16);
for a=1:n_echant
    if (mod(a,n_echant/100)==0)
        disp((n_echant-a)/100); fflush(stdout);
    end
    X = metropolis_potts(2,10);
    for b=1:16
        if (X==x{b})
            p(b) = p(b)+1;
        end
    end
end
p = p/n_echant;
disp(['p = [' num2str(p) ']'])
