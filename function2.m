function [return2] = function2(x)
    return2 = exp(-0.2.*x)+(1-cos(2.*x))./(x+tan(x.^2).^2);
end