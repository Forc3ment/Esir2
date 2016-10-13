function N = tikhonov(U,seuil,dt,lambda)
  figure;
  
  i=0;
  I = U;
  subplot(1,3,1); imshow(I,[]);
  
  dif=100;
  J=999999999999999;
  
  while(seuil<dif)
    temp = J;
    
    U = ( I - U(:,:) + lambda*laplacien(U(:,:)))*dt + U(:,:);      %calcul de l'image
    J = sum(sum(( U(:,:)-I(:,:)).^2 )) + lambda*sum(sum( gradient(U).^2 ));   %calcul de l'energie
    
    subplot(1,3,2); imshow(U,[]); 
    subplot(1,3,3); hold on; plot(i,J); hold off;
    i++;
    drawnow;
    
    dif = temp-J;
    
  end
  N=U;
  
  