function [return3] = function3(x)
    return3 = (1+x./(x-0.5))./(1+(3.1.*x.*exp(-x+2))./(sin(x)-cos(x.^3).^2));
end