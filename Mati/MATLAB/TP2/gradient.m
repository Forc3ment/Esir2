function N = gradient(u)
  G = grad(u);
  N(:,:) = sqrt( (G(:,:,1).*G(:,:,1)) + (G(:,:,2).*G(:,:,2)) );
  