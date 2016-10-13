function N = tikhonovND(U,seuil,dt,lambda)  %Tikhonov without display

  I = U;
  
  dif=100;
  J=999999999999999;
  
  while(seuil<dif)
    temp = J;
    
    U = ( I - U(:,:) + lambda*laplacien(U(:,:)))*dt + U(:,:);      %calcul de l'image
    J = sum(sum(( U(:,:)-I(:,:)).^2 )) + lambda*sum(sum( gradient(U).^2 ));   %calcul de l'energie
    
    dif = temp-J;
    
  end
  N=U;
  
  