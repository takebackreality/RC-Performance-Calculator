function [LoverD, CL, CD] = calcLiftDrag(V,W,S,rho,CD0,k)
    q = 0.5*rho*V.^2;
    CL = W./(q*S);
    CD = CD0 + k*CL.^2;
    LoverD = CL./CD;
end
