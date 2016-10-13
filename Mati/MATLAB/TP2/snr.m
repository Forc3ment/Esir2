function v = snr(x,y)

% snr - rapport signal à bruit
%
%   v = snr(x,y);
%
% v = 20*log10( norm(x(:)) / norm(x(:)-y(:)) )
%
%   x est l'image d'origine non bruitée (référence).
%   y est l'image débruitée

v = 20*log10(norm(x(:))/norm(x(:)-y(:)));
