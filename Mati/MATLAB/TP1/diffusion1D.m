
function u_n = diffusion1D(u, n, dt, dx)
    r = dt/(dx*dx);
    u0 = u;
    figure;
    
    for i = 1:1:n
        u_gauche = [u0(2:end) u0(end)];
        u_droite = [u0(1) u0(1:end-1)];
        u1 = (1-2*r)*u0 + r*(u_gauche + u_droite);
        u0 = u1;
        
        plot(u0, '--r'); axis([0 41 -1.5 1.5]); drawnow;
    end
    
    u_n = u1;
    