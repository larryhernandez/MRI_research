function [gradx_interp grady_interp gradz_interp] = stretchgradients(gradx,grady,gradz,Xold,Xnew)
    gradx_interp = interp1(Xold,gradx,Xnew, 'linear', 'extrap')';
    grady_interp = interp1(Xold,grady,Xnew, 'linear', 'extrap')';
    gradz_interp = interp1(Xold,gradz,Xnew, 'linear', 'extrap')';
end % end of function