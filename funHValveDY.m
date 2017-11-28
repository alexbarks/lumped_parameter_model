function F = funHValveDY(y,p,par,i,rho,CCMin,CCMout)

    if (y(i)>=0.0)
        r = par(3);
        a = par(2);
        m = par(1);
    else
        r = par(6);
        a = par(5);
        m = par(4);        
    end
    F = (p(CCMin(i))-p(CMMout(i))-r*y(i)-0.5*rho*(y(i)/a)*abs(y(i)/a))/m;
    if (F <0.0 & y(i)<=0.0) 
        F = 0.0;   
    end
    
return