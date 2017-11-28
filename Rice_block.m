clear all; close all; format compact; format long; clc;

% units uM, um, s

slp = 2.2;
nsteps = 500;

dt = 0.002;
time = [0:dt:1.0-dt]';
d = 0.1/dt;

factor = 0.8;
factor2 = 1.0;
factor3 = 2.0;

Camin = 0.1; 
CamaxLV = 0.68; 
timing = 50.;
apd = 300.; 
tau_act = 10.; 
tau_deact = 60.; 

Ca = Catgen(time',0.002,Camin,CamaxLV,timing,apd,tau_act,tau_deact);
%Ca = 0.68*ones(size(Ca));

sl = slp*ones(nsteps,1);
sl(20:300) = 1.75 + (slp-1.75)./(1.+exp(0.05.*[-140:140]));
sl(250:500) = 1.75;
sln = (sl-1.65)/(2.35-1.65);
sln2 = (sl-1.5)/(2.35-1.5);
for i=1:length(sl)
if (sl(i) < 2.)
    alfa2(i) = (sl(i)-1.65)/0.35;
elseif (sl(i) < 1.65)
    alfa2(i) = 0.0;    
else
    alfa2(i) = 1.0;
end
end

slnd =sln(1)*ones(size(sln));
alfa2d =ones(size(alfa2));
for i=d+1:length(sl)
    alfa2d(i) = alfa2(i-d);
    slnd(i) = sln(i-d);
end

% XB model: rates between states
f = 10.*factor;
f01 = 3.*f;
f12 = 14.*f;
f23 = 10.*f;
g = 35.*factor2;
gsl = g.*(1+factor3*(1.-sln2).^1.5);
g10 = gsl;
g21 = 2.*gsl;
g32 = 3.*gsl;

kon = 40.*factor;
koff = 20.*factor;
kca = koff/kon;
k12 = 1./(1.+kca./(0.5+(1.-sln2).^1.5));
n = 5.+3.*sln2;
kn1 = 45.*factor2;

Tca = zeros(nsteps,1);
N0 = Tca; N1 = Tca; P0 = Tca; P1 = Tca; P2 = Tca; P3 = Tca; 
N0(1) = 1;

Y = zeros(6,nsteps);
Y(1,1) = 1.;
A = zeros(6,6);
I = eye(6,6);


% trapezoidal 
for step=2:nsteps
    Tca(step) = (Tca(step-1) + 0.5*dt*(kon*Ca(step)+kon*Ca(step-1)-...
        (koff+kon*Ca(step-1))*Tca(step-1)))/(1.+0.5*dt*(koff+kon*Ca(step)));
    k1 = kn1*factor/factor2*(Tca(step)/k12(step))^n(step);
    A(1,1) = -k1; A(1,2) = g10(step); A(1,3) = kn1;
    A(2,2) = -(g10(step)+k1); A(2,4) = kn1;
    A(3,1) = k1; A(3,3) = -(kn1+f01); A(3,4) = g10(step);
    A(4,2) = k1; A(4,3) = f01; A(4,4) = -(kn1+f12+g10(step)); A(4,5) = g21(step);
    A(5,4) = f12; A(5,5) = -(f23+g21(step)); A(5,6) = g32(step);
    A(6,5) = f23; A(6,6) = -g32(step);
    Y(:,step) = inv(I-0.5*dt*A)*(I+0.5*dt*A)*Y(:,step-1);
end

g10m = g; g21m = 2.*g; g32m = 3.*g;
sum = g10m*g21m*g32m+f01*g21m*g32m+f01*f12*g32m+f01*f12*f23;
P1max = f01*g21m*g32m/sum; 
P2max = f01*f12*g32m/sum;
P3max = f01*f12*f23/sum;
Fmax = P1max+2.*P2max+3.*P3max;
for i=1:length(sl)
if (i>d)
    if (sl(i-d)<2.)
    alfa((i)) = 0.79 + 0.7*(sl(i-d)-1.7);
    else
    alfa(i) = 1.0;
    end
else
    alfa(i) = 1.0;
end
end
Fnorm = alfa(1:nsteps).*(Y(2,1:nsteps)+Y(4,1:nsteps)+2*Y(5,1:nsteps)+3.*Y(6,1:nsteps))/Fmax;

t = [0:dt:dt*nsteps-dt]';
subplot(2,2,1),plot(t,Fnorm,'b')
subplot(2,2,2),plot(t(2:nsteps),diff(Fnorm)/dt,'b-')
subplot(2,2,3),,plot(t,Ca,'r')
subplot(2,2,4),,plot(t,sl,'k')