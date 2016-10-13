function v = snr(x,y)

% snr - rapport signal � bruit
%
%   v = snr(x,y);
%
% v = 20*log10( norm(x(:)) / norm(x(:)-y(:)) )
%
%   x est l'image d'origine non bruit�e (r�f�rence).
%   y est l'image d�bruit�e

v = 20*log10(norm(x(:))/norm(x(:)-y(:)));
