function G = segmentation (I, Phi, e, dt, alpha, c, n, nb_affiche)

toto = 1+ gradient(gauss(I,e,4*e));
G=1./toto;

for t=0:n-1
    

    Phi =  Phi .+  dt .*( G .* (alpha.*courbure(Phi) .+ normgrad_contraction_expansion(Phi,c)));
    
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

endfunction
