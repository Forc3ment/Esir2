function N = norm_grad(G)
    N = sqrt(G(:, :, 1).*G(:, :, 1)+G(:, :, 2).*G(:, :, 2));
end