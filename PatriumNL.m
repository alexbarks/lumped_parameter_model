function P = PatriumNL(t,hr,V,par,PV,t0)

% Code unchanged

ntime = mod(t-t0,60.0/hr);
tact = par(3);
Vs0 = par(1);
Vd0 = par(4);
Es = par(2);

if (ntime < 2.0*tact) 
    alfa = 0.5*(1.0-cos(pi*ntime/tact));
else
    alfa = 0.0;
end

% passive pressure contribution
if (V >= PV(5))
    Pd = PV(1)*exp((V-PV(5))/PV(6))+PV(3);
else
    Pd = PV(4)-PV(2)*exp((PV(5)-V)/PV(7));
end

P = alfa*Es*(V-Vs0)+(1.0-alfa)*Pd;

return