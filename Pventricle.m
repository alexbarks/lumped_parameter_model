function P = Pventricle(t,hr,vd,V,par,PV,activate,Es);

ntime = mod(t,60.0/hr);

if (V >= PV(5))
    Pd = PV(1)*exp((V-PV(5))/PV(6))+PV(3);
else
    Pd = PV(4)-PV(2)*exp((PV(5)-V)/PV(7));
end

Vs0 = 10.0;
if (activate == 1)
    tau = 0.050;
    tact = 0.150;
    tx = 2.227988269905329e-001;
    if (ntime <= vd) 
        alfa = 0.0;
    elseif (ntime > vd & ntime <= vd+tx)
        alfa = 0.5*(1.0-cos(pi*(ntime-vd)/tact));
    else 
        ax = 0.5 * (1.0-cos(pi*tx/tact));
        alfa = ax * exp((tx-(ntime-vd))/tau);
    end
    P = alfa*Es*(V-Vs0)+(1.0-alfa)*Pd;
end
Vs0 = 20.0;
if (activate == 2)
    Ts = 0.25*sqrt(60.0/hr);
    if (ntime <= vd) 
        alfa = 0.0;
    elseif (ntime > vd & ntime <= Ts+vd)
        alfa = 0.5*(1.-cos(pi*(ntime-vd)/Ts));
    elseif (ntime > Ts+vd & ntime <= 1.5*Ts+vd)
        alfa = 0.5*(1.+cos(2.*pi*(ntime-Ts-vd)/Ts));
    elseif (ntime > 1.5*Ts+vd)
        alfa = 0.0;
    end
    P = alfa*Es*(V-Vs0)+(1.0-alfa)*Pd;
end



return