function P = PventricleRice(V,par,PV,y,Fmax,nc,p)

PFmax = par(1);
V0 = par(3);

% passive pressure contribution
if (V >= PV(5))
    Pd = PV(1)*exp((V-PV(5))/PV(6))+PV(3);
else
    Pd = PV(4)-PV(2)*exp((PV(5)-V)/PV(7));
end

% sarcomere length (from wall strain - volume relationship)
sl  = 1.80*(V/V0)^0.2;
% alfa coefficient
if (sl < 2.2)
    alfa = 1.0 - (2.2-sl)^2.2;
else
    alfa = 1.0;
end

m = nc + 7*(p-1);
% normalized fiber force
Fnorm = alfa*(y(m+3)+y(m+5)+2.*y(m+6)+3.*y(m+7))/Fmax;
% active pressure contribution (take in account wall stress - pressure relationship)
if (V>10)
    Ps = Fnorm*PFmax*(V0/V)^0.5;
else
    Ps = Fnorm*PFmax*(V0/10)^0.5;    
end
% total pressure
P = Pd + Ps;

return