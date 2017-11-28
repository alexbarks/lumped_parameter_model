clear all; close all; clc; format compact; format long e;

% included functions/subroutines: Catgen, Cacurvesig, funVn, cardiolumpedCVRNL
% PventricleRice, PatriumNL, Pchamber, ForceRice, funVolumeDY, funValveDY

% MAIN VARIABLE INPUT PARAMETERS

% Total number of parameters = ~100

% default calcium = 0.68
% default duration = 280.0
% default relaxation = 50.0
% default XBrate = 1.0

% run: 0.5 / 0.6 / 0.8 / 330-75 / 380-100 / 430-125 / 0.5 / 0.75 / 1.5
SLR = 1.85;
calcium = 0.68;
duration = 280.;
relaxation = 50.;
XBrate = 1.00;

start = -7.25;
beats = 3.0;

hr = 65.0;
vd = 0.12; % atria ventricular delay
rvlvd = 0.00; % added RV LV delay

dt = 0.0025;
time = [start:dt:start+beats*60.0/hr]; % solution time points

LVpar = [280. calcium  40.  0.  0.11 70.  10. -5.]; 
RVpar = [90.  calcium  40.  0.  0.07 70.  10. -5.];  
LApar = [20.  0.2  0.15 40. 0.   0.07 65. 10. -5.];
RApar = [20.  0.2  0.15 40. 0.   0.07 65. 10. -5.];

TVpar  = [6./4. 4. 0.5 0.]; 
PVvpar = [20./4. 4. 0.0 15.]; 
MVpar  = [6./4. 4. 0.5 0.];
AVpar  = [60./4. 4. 0.0 15.]; 

SCpar  = [10. 1.0 0.0 1200.]; 
RAIpar = [3.0 1.0 0.0 120. ]; 
PCpar  = [5.0 1.0 0.0 180. ]; 
LAIpar = [3.0 1.0 0.0 120. ]; 

% Contents unchanged
PVpar  = [300.  15.];
SApar  = [300.  1.25];
SVpar  = [3200. 35.];
PApar  = [120.  3.5];

% mostly fixed parameters 
rho = 1.0;
%Fmax = 1.76;
Fmax = 1.41;
Camin = 0.1; 
CamaxLV = LVpar(2); 
CamaxRV = RVpar(2); 
timing = 50.;
apd = duration; 
tau_act = 15.; 
tau_deact = relaxation; 

Catime = [0.0:0.001:1.0];
% Calcium profile
CaLV = Catgen(Catime,0.001,Camin,CamaxLV,timing,apd,tau_act,tau_deact);
CaRV = Catgen(Catime,0.001,Camin,CamaxRV,timing,apd,tau_act,tau_deact);

% computed LV Elastance parameters
Vp = LVpar(6); Vd0 = LVpar(3);
Pd0 = LVpar(4); Ed0 = LVpar(5);
Vmin = LVpar(7); Pmin = LVpar(8);
Vn = fsolve(@funVn,(Vd0-Vmin)/log(-(Pmin-Pd0)/Ed0),[],Vd0,Vmin,Pmin,Pd0,Ed0);
PV_LV(1) = Ed0 * Vp;
PV_LV(2) = Ed0 * Vn;
PV_LV(3) = Pd0 - PV_LV(1);
PV_LV(4) = Pd0 + PV_LV(2);
PV_LV(5) = Vd0;
PV_LV(6) = Vp;
PV_LV(7) = Vn;

% computed RV Elastance parameters
Vp = RVpar(6); Vd0 = RVpar(3);
Pd0 = RVpar(4); Ed0 = RVpar(5);
Vmin = RVpar(7); Pmin = RVpar(8);
Vn = fsolve(@funVn,(Vd0-Vmin)/log(-(Pmin-Pd0)/Ed0),[],Vd0,Vmin,Pmin,Pd0,Ed0);
PV_RV(1) = Ed0 * Vp;
PV_RV(2) = Ed0 * Vn;
PV_RV(3) = Pd0 - PV_RV(1);
PV_RV(4) = Pd0 + PV_RV(2);
PV_RV(5) = Vd0;
PV_RV(6) = Vp;
PV_RV(7) = Vn;

% computed LA Elastance parameters
Vp = LApar(6+1); Vd0 = LApar(3+1);
Pd0 = LApar(4+1); Ed0 = LApar(5+1);
Vmin = LApar(7+1); Pmin = LApar(8+1);
Vn = fsolve(@funVn,(Vd0-Vmin)/log(-(Pmin-Pd0)/Ed0),[],Vd0,Vmin,Pmin,Pd0,Ed0);
PV_LA(1) = Ed0 * Vp;
PV_LA(2) = Ed0 * Vn;
PV_LA(3) = Pd0 - PV_LA(1);
PV_LA(4) = Pd0 + PV_LA(2);
PV_LA(5) = Vd0;
PV_LA(6) = Vp;
PV_LA(7) = Vn;

% computed RV Elastance parameters
Vp = RApar(6+1); Vd0 = RApar(3+1);
Pd0 = RApar(4+1); Ed0 = RApar(5+1);
Vmin = RApar(7+1); Pmin = RApar(8+1);
Vn = fsolve(@funVn,(Vd0-Vmin)/log(-(Pmin-Pd0)/Ed0),[],Vd0,Vmin,Pmin,Pd0,Ed0);
PV_RA(1) = Ed0 * Vp;
PV_RA(2) = Ed0 * Vn;
PV_RA(3) = Pd0 - PV_RA(1);
PV_RA(4) = Pd0 + PV_RA(2);
PV_RA(5) = Vd0;
PV_RA(6) = Vp;
PV_RA(7) = Vn;

'Initializing...'
% number of compartments
nc = 16;
% number of Rice XB model sets (7 state variables each)
pRice  = 2;
% solution vector init
y0 = zeros(nc+7*pRice,1);

p0(1) = 10.0;
p0(2) = 0.0;
p0(3) = 100.;
p0(4) = 15.0;
p0(5) = 10.0;
p0(6) = 0.0;
p0(7) = 20.0;
p0(8) = 10.0;

% non-zero flow rates
y0(1) = 0;
y0(2) = 0.;
y0(3) = 0.;
y0(4) = 0;
y0(5) = 0;
y0(6) = 0.;
y0(7) = 0.;
y0(8) = 0.;
% non-zero volumes
y0(9) = 80;
y0(10) = 40.;
y0(11) = 420.;
y0(12) = 3720;
y0(13) = 80;
y0(14) = 40.;
y0(15) = 200.;
y0(16) = 450.;

% non-zero initial XB states
y0(nc+2)    = 1.0;
y0(nc+7+2)  = 1.0;

load data y0;

BLOOD_VOLUME = sum(y0(9:16))

'computing...'
options = odeset('RelTol',1e-6,'AbsTol',[1e-8 1e-8 1e-8]);
[t,y] = ode23tb(@cardiolumpedCVRNL,time,y0',[],PV_LV,PV_RV,PV_LA,PV_RA,LVpar,RVpar,LApar,RApar,...
                   TVpar,PVvpar,MVpar,AVpar,SCpar,RAIpar,PCpar,LAIpar,PVpar,SApar,...
                   SVpar,PApar,hr,vd,rho,CaLV,CaRV,rvlvd,nc,pRice,Fmax,time(1),XBrate,SLR);

'Post Processing...'

for i=1:length(t)
    % recompute pressures
    p(i,1) = PatriumNL(t(i),hr,y(i,9),LApar,PV_LA,time(1));
    p(i,2) = PventricleRice(y(i,10),LVpar,PV_LV,y(i,:),Fmax,nc,1);
    p(i,5) = PatriumNL(t(i),hr,y(i,13),RApar,PV_RA,time(1));
    p(i,6) = PventricleRice(y(i,14),RVpar,PV_RV,y(i,:),Fmax,nc,2);
    p(i,3) = Pchamber(y(i,11),SApar);
    p(i,4) = Pchamber(y(i,12),SVpar);
    p(i,7) = Pchamber(y(i,15),PApar);
    p(i,8) = Pchamber(y(i,16),PVpar);
    % recompute LV normalized force
    sl(i)  = SLR*(y(i,10)/LVpar(3))^0.2;
    if (sl(i) < 2.2)
        alfa(i) = 1.0 - (2.2-sl(i))^2.2;
    else
        alfa(i) = 1.0;
    end
    Fnorm(i) = alfa(i)*(y(i,nc+3)+y(i,nc+5)+2.*y(i,nc+6)+3.*y(i,nc+7))/Fmax;
    test1(i)=y(i,nc+3)+y(i,nc+5)+2.*y(i,nc+6)+3.*y(i,nc+7);
    test2(i)=y(i,nc+5)+2.*y(i,nc+6)+3.*y(i,nc+7);
    test3(i)=2.*y(i,nc+6)+3.*y(i,nc+7);
    test4(i)=3.*y(i,nc+7);
end

DPDTLV = diff(p(:,2))./diff(t);

VOL = [20:150];
for i=1:length(VOL)
    % passive pressure contribution
    if (VOL(i) >= PV_LV(5))
        Pdl(i) = PV_LV(1)*exp((VOL(i)-PV_LV(5))/PV_LV(6))+PV_LV(3);
    else
        Pdl(i) = PV_LV(4)-PV_LV(2)*exp((PV_LV(5)-VOL(i))/PV_LV(7));
    end
end

for i=1:length(VOL)
    % passive pressure contribution
    if (VOL(i) >= PV_RV(5))
        Pdr(i) = PV_RV(1)*exp((VOL(i)-PV_RV(5))/PV_RV(6))+PV_RV(3);
    else
        Pdr(i) = PV_RV(4)-PV_RV(2)*exp((PV_RV(5)-VOL(i))/PV_RV(7));
    end
end
figure, plot(VOL,Pdl,VOL,Pdr); 

t2 = length(t);
t1 = t2 - 1.0/dt; 
time = t(t1:t2);

subplot(3,2,1), plot(time,p(t1:t2,1),time,p(t1:t2,2),time,p(t1:t2,3))
legend('LA','LV','SA',1);
%xlabel('time (s)');
ylabel('pressure (mmHg)');
%axis([0.2 1.4 0 120])
subplot(3,2,2), plot(time,p(t1:t2,5),time,p(t1:t2,6),time,p(t1:t2,7))
legend('RA','RV','PA',1);
%xlabel('time (s)');
%ylabel('pressure (mmHg)');
%axis([0.2 1.4 0 40])

subplot(3,2,5), plot(time,y(t1:t2,2)/MVpar(2),time,y(t1:t2,3)/AVpar(2))
legend('MV','AV',1);
xlabel('time (s)');
ylabel('velocity (cm/s)');
%axis([0.2 1.4 0 120])
subplot(3,2,6), plot(time,y(t1:t2,6)/TVpar(2),time,y(t1:t2,7)/PVvpar(2))
legend('TV','PV',1);
xlabel('time (s)');
%ylabel('velocity (cm/s)');
%axis([0.2 1.4 0 120])

subplot(3,2,3), plot(time,y(t1:t2,9),time,y(t1:t2,10))
legend('LA','LV',1);
%xlabel('time (s)');
ylabel('volume (ml)');
%axis([0.2 1.4 20 120])
subplot(3,2,4), plot(time,y(t1:t2,13),time,y(t1:t2,14))
legend('RA','RV',1);
%xlabel('time (s)');
%ylabel('volume (ml)');
%axis([0.2 1.4 20 120])

figure, plot(time,y(t1:t2,17),time,y(t1:t2,18),time,y(t1:t2,19),time,y(t1:t2,20),...
     time,y(t1:t2,21),time,y(t1:t2,22),time,y(t1:t2,23))
legend('TCA','N0','N1','P0','P1','P2','P3',1);
xlabel('time (s)');
ylabel('crossbridge states');
%axis([0.2 1.4 0 1])

figure, plot(time,Fnorm(t1:t2))
figure, plot([0.0:0.001:1.0],CaLV);
figure, plot(t(length(t)-(t2-t1):length(t)),DPDTLV(length(t)-(t2-t1)-1:length(t)-1));
sl  = SLR*(y(t1:t2,10)/40.).^0.2;
figure, plot(time,sl)

