function v_n = diffusion2D(v, n, dt)
    v0 = v;
    figure;
    
    for i = 1:1:n
        v_gauche = [v0(:,2:end) v0(:,end)];
        v_droite = [v0(:,1) v0(:,1:end-1)];
        
        v_bas = [v0(1,:) ; v0(1:end-1,:)];
        v_haut = [v0(2:end,:) ; v0(end,:)];
        
        v1 = (v_gauche + v_droite+v_bas+v_haut)*dt+(1-4*dt)*v0;
        v0 = v1;
        
        subplot(1,2,1); surf(v0);
        subplot(1,2,2); imshow(v0,[]); 
        drawnow;
    end
    
    v_n = v1;
    