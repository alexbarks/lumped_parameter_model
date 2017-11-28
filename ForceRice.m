function dy = ForceRice(t,y,dy,nc,p,V,hr,delay,par,Ca,t0,XBrate,SLR)

V0 = par(3);

% sarcomere length from volume (derived wall strain for sphere, based on volume)
sl  = SLR*(V/V0)^0.2;

% normalized sarcomere length
sln = (sl-1.65)/(2.35-1.65);
sln2 = (sl-1.5)/(2.35-1.5);
if (sln > 1.0)
    sln = 1.0;
elseif (sln < 0.0)
    sln = 0.0;
end
if (sln2 > 1.0)
    sln2 = 1.0;
elseif (sln2 < 0.0)
    sln2 = 0.0;
end

Catime = mod(t-delay-t0,60.0/hr);
Cai = interp1([0.0:0.001:1.0],Ca,Catime);

% XB model: rates between states
f = 9.*XBrate;
f01 = 3.*f;
f12 = 14.*f;
f23 = 10.*f;
g = 42.*XBrate;
gsl = g*(1+(1.-sln2)^3.0);
g10 = gsl;
g21 = 2.*gsl;
g32 = 3.*gsl;

kon = 36.;
koff = 18.;

kca = koff/kon;
k12 = 1./(1.+kca./(0.5+(1.-sln2)^1.6));
n = 5.+3.*sln2;
kn1 = 45.;
kp1 = 30.;

% n other normal compartments listed before, and chamber number p as Xb is current
m = nc + 7*(p-1);

% TCA
dy(m+1) = kon*Cai*(1.0-y(m+1))-koff*y(m+1);
k1 = kp1*(y(m+1)/k12)^n;
% N0
dy(m+2) = g10*y(m+3)+kn1*y(m+4)-k1*y(m+2);
% N1
dy(m+3) = -g10*y(m+3)+kn1*y(m+5)-k1*y(m+3);
% P0
dy(m+4) = k1*y(m+2)+g10*y(m+5)-(kn1+f01)*y(m+4);
% P2
dy(m+6) = f12*y(m+5)+g32*y(m+7)-(f23+g21)*y(m+6);
% P3
dy(m+7) = f23*y(m+6)-g32*y(m+7);
% P2 (sum of all dy/dt must be zero)
dy(m+5) = -(dy(m+2)+dy(m+3)+dy(m+4)+dy(m+6)+dy(m+7));


return