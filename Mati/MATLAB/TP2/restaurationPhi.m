function N = restaurationPhi(U,seuil,dt,e,lambda)  %Tikhonov without display

  figure;
  i=0;
  I = U;
  subplot(2,2,1); imshow(I,[]);
  
  dif=100;
  J=999999999999999;
  
  while(seuil<dif)
    temp = J;
    
    U = ( 2*( I - U(:,:)) + lambda*div(grad(U(:,:)) ./ repmat((sqrt(e.+gradient(U(:,:)).^2)),1,1,2)))*dt + U(:,:);      %calcul de l'image
    J = sum(sum(( U(:,:)-I(:,:)).^2 )) + lambda*sum(sum( gradient(U).^2 ));   %calcul de l'energie

    subplot(2,2,2); imshow(U,[]); 
    subplot(2,2,3); hold on; plot(i,J); hold off;
    i++;
    drawnow;
    
    dif = temp-J;
    
  end
  N=U;
  
  