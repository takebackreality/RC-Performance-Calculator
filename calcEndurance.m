function [bestEndurance,minPower] = calcEndurance(V,W,S,rho,CD0,k)
    q = 0.5*rho*V.^2;
    CL = W./(q*S);
    CD = CD0 + k*CL.^2;
    D = q.*S.*CD;
    Power = D.*V;
    [minPower,idx] = min(Power);
    bestEndurance = V(idx);
end
