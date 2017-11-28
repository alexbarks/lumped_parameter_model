function F = funValveDY(y,p,par,i,rho,CCMin,CCMout,ValveType,valves)

if (ValveType == 5) 
    ar = par(5);
    r2 = par(4);
    r1 = par(3);
    a = par(2);
    m = par(1);
    F = (p(CCMin(i))-p(CCMout(i))-r2*y(i)-r1*0.5*(y(i)/a)*(y(i)/a))/m;    
    % Calculate regurtitation case JGF
    if (isempty(find(valves==i, 1))==0 && F <0.0 && y(i)<=0.0)
        if ((i==3||i==2||i==6||i==7) && ar>0)
            mar=ar*3;             
            F = (p(CCMin(i))-p(CCMout(i))+r2*y(i)+r1*0.5*(y(i)/ar)*(y(i)/ar))/mar;                        
        else
            F = 0.0;
        end    
    end
    %
end
if (ValveType == 4) 
    r2 = par(4);
    r1 = par(3);
    a = par(2);
    m = par(1);
    F = (p(CCMin(i))-p(CCMout(i))-r2*y(i)-r1*0.5*rho*(y(i)/a)*(y(i)/a))/m;
end
    
return