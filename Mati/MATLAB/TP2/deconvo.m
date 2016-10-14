function N = deconvo (U,seuil,dt,e,t)
  figure;
  
  I = U;
  subplot(1,3,1); imshow(I,[]);
  
  
  for i=1:1000
    
    U = ( I - U(:,:))*dt + U(:,:);      %calcul de l'image
    
    subplot(1,2,2); imshow(U,[]); 
    drawnow;
    
  end
  N=U;
