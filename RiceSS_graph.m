clear all; format compact; format long; clc; close all;

% units uM, um, s

slrange = [1.7 1.8 1.9 2.0 2.1 2.2 2.3];
cairange = [0.05 0.2 0.25 0.3 0.35 0.4 0.45 0.5 0.55 0.6 0.65 0.7 0.75 0.8 0.9 1.0 1.2 1.5 2.0 3.0 4.0 5.0 10.0];
steps = [1000 1000 1000 1000 1000 1000 1000];
split = 0.4*steps;

for i=1:7
for j=1:length(cairange)

sl = slrange(i);
nsteps = steps(i);

dt = 1.0/nsteps;
time = [0:1.0/nsteps:1.0-1.0/nsteps]';

CAI = cairange(j);

Ca = CAI.*ones(nsteps,1);
Ca(1:split(i)) = [0.01:(CAI-0.01)/(split(i)-1):CAI];
sln = (sl-1.65)/(2.35-1.65);
sln2 = (sl-1.5)/(2.35-1.5);
sln = (sl-1.7)/(2.3-1.7);

%factor = 0.9;
%factor2 = 1.2;
%factor3 = 1.0;
factor = 1.0;
factor2 = 1.0;
factor3 = 1.0;
% XB model: rates between states
f = 9.*factor;
f01 = 3.*f;
f12 = 14.*f;
f23 = 10.*f;
g = 42.*factor2;
gsl = g*(1+factor3*(1.-sln)^1.6);
g10 = gsl;
g21 = 2.*gsl;
g32 = 3.*gsl;

kon = 20.*factor;
koff = 40.*factor;
kca = koff/kon;
%k12 = 1./(1.+kca./(0.5+(1-sln2).^1.6));
k12 = 1./(1.+kca./(1.5-sln));
%n = 5.+3.*sln2;
n = 5.+3.*sln;
kn1 = 35.*factor2;

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
    k1 = kn1*factor/factor2*(Tca(step)/k12)^n;
    A(1,1) = -k1; A(1,2) = g10; A(1,3) = kn1;
    A(2,2) = -(g10+k1); A(2,4) = kn1;
    A(3,1) = k1; A(3,3) = -(kn1+f01); A(3,4) = g10;
    A(4,2) = k1; A(4,3) = f01; A(4,4) = -(kn1+f12+g10); A(4,5) = g21;
    A(5,4) = f12; A(5,5) = -(f23+g21); A(5,6) = g32;
    A(6,5) = f23; A(6,6) = -g32;
    Y(:,step) = inv(I-0.5*dt*A)*(I+0.5*dt*A)*Y(:,step-1);
end

g10m = g; g21m = 2.*g; g32m = 3.*g;
sum = g10m*g21m*g32m+f01*g21m*g32m+f01*f12*g32m+f01*f12*f23;
P1max = f01*g21m*g32m/sum; 
P2max = f01*f12*g32m/sum;
P3max = f01*f12*f23/sum;
Fmax = P1max+2.*P2max+3.*P3max
if (sl<2.)
    alfa =  1.0 - (2.2-sl)^2.2;
else
    alfa = 1.0;
end
Fnorm = alfa*(Y(2,nsteps)+Y(4,nsteps)+2*Y(5,nsteps)+3.*Y(6,nsteps))/Fmax;

Fnormgraph(j,i) = Fnorm;

end
end

Fmax

figure,semilogx(cairange,Fnormgraph(:,7),'r',cairange,Fnormgraph(:,6),'b',...
    cairange,Fnormgraph(:,5),'g',cairange,Fnormgraph(:,4),'k',...
    cairange,Fnormgraph(:,3),'c',cairange,Fnormgraph(:,2),'y',...
    cairange,Fnormgraph(:,1),'m')
axis([0.1 10 0 1] )
legend('2.3','2.2','2.1','2.0','1.9','1.8','1.7')
xlabel('Intracellular Calcium (uM)');
ylabel('Normalized Fiber Force');


sl = [1.65:0.01:2.35];
for i=1:length(sl)
if (sl(i)<2.)
    alfa(i) =  0.79 + 0.7*(sl(i)-1.7);
elseif (sl>2.2)
    alfa(i) = 1.0 - (sl(i)-2.2);    
else
    alfa(i) = 1.0;
end
if (sl(i)<2.2)
    alfa2(i) =  1.0 - (2.2-sl(i))^2.2;
else
    alfa2(i) = 1.0;
end
end

corrcoef(alfa,alfa2)

figure, plot(sl,alfa2)
xlabel('Sarcomere Length (um)');
ylabel('Force Overlap Ratio');
axis([1.6 2.4 0.7 1.05] )

