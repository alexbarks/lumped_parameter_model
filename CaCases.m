clear all; close all; clc; format compact; format long e;

tend = 0.9;
Catime = [0.0:0.001:tend];

% default calcium = 0.68
% default activation = 10.0
% default relaxation = 50.0
% default XBrate = 1.0

calcium = 0.68;
activation = 10;
relaxation = 50.;
Camin = 0.1; 
CamaxLV = calcium; 
timing = 50.;
apd = 280.; 
tau_act = activation; 
tau_deact = relaxation; 

CaLV0 = Catgen(Catime,0.001,Camin,CamaxLV,timing,apd,tau_act,tau_deact);

calcium = 0.68;
activation = 10;
relaxation = 75.;
Camin = 0.1; 
CamaxLV = calcium; 
timing = 50.;
apd = 330.; 
tau_act = activation; 
tau_deact = relaxation; 

CaLV1 = Catgen(Catime,0.001,Camin,CamaxLV,timing,apd,tau_act,tau_deact);

calcium = 0.68;
activation = 10;
relaxation = 100.;
Camin = 0.1; 
CamaxLV = calcium; 
timing = 50.;
apd = 380.; 
tau_act = activation; 
tau_deact = relaxation; 

CaLV2 = Catgen(Catime,0.001,Camin,CamaxLV,timing,apd,tau_act,tau_deact);

calcium = 0.68;
activation = 10;
relaxation = 125.;
Camin = 0.1; 
CamaxLV = calcium; 
timing = 50.;
apd = 430.; 
tau_act = activation; 
tau_deact = relaxation; 

CaLV3 = Catgen(Catime,0.001,Camin,CamaxLV,timing,apd,tau_act,tau_deact);

figure, plot(Catime,CaLV0,'k',Catime,CaLV1,'b',Catime,CaLV2,'r',Catime,CaLV3,'g');
axis([0 0.9 0.05 0.75])
xlabel('time (ms)'); ylabel('Cai (uM)');
legend('baseline','75 ms','100 ms','125 ms')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% default calcium = 0.68
% default activation = 10.0
% default relaxation = 50.0
% default XBrate = 1.0
calcium = 0.68;
activation = 10;
relaxation = 50.;
Camin = 0.1; 
CamaxLV = calcium; 
timing = 50.;
apd = 280.; 
tau_act = activation; 
tau_deact = relaxation; 

tend = 0.9;
Catime = [0.0:0.001:tend];

CaLV = Catgen(Catime,0.001,Camin,CamaxLV,timing,apd,tau_act,tau_deact);

calcium = 0.68;
activation = 10;
relaxation = 50.;
Camin = 0.1; 
CamaxLV = calcium; 
timing = 50.;
apd = 250.; 
tau_act = activation; 
tau_deact = relaxation; 

CaLV0 = Catgen2(Catime,0.001,Camin,CamaxLV,timing,apd,tau_act,tau_deact);

Rpara = corrcoef(CaLV,CaLV0)
normerror = sqrt(sum((CaLV-CaLV0).^2))/length(CaLV)/(mean(CaLV))

calcium = 0.68;
activation = 10;
relaxation = 75.;
Camin = 0.1; 
CamaxLV = calcium; 
timing = 50.;
apd = 300.; 
tau_act = activation; 
tau_deact = relaxation; 

CaLV1 = Catgen2(Catime,0.001,Camin,CamaxLV,timing,apd,tau_act,tau_deact);

calcium = 0.68;
activation = 10;
relaxation = 100.;
Camin = 0.1; 
CamaxLV = calcium; 
timing = 50.;
apd = 350.; 
tau_act = activation; 
tau_deact = relaxation; 

CaLV2 = Catgen2(Catime,0.001,Camin,CamaxLV,timing,apd,tau_act,tau_deact);

calcium = 0.68;
activation = 10;
relaxation = 125.;
Camin = 0.1; 
CamaxLV = calcium; 
timing = 50.;
apd = 400.; 
tau_act = activation; 
tau_deact = relaxation; 

CaLV3 = Catgen2(Catime,0.001,Camin,CamaxLV,timing,apd,tau_act,tau_deact);

figure, plot(Catime,CaLV0,'k',Catime,CaLV1,'b',Catime,CaLV2,'r',Catime,CaLV3,'g');
axis([0 0.9 0.05 0.75])
xlabel('time (ms)'); ylabel('Cai (uM)');
legend('baseline','75 ms','100 ms','125 ms')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% default calcium = 0.68
% default activation = 10.0
% default relaxation = 50.0
% default XBrate = 1.0

calcium = 0.50;
activation = 10;
relaxation = 50.;
Camin = 0.1; 
CamaxLV = calcium; 
timing = 50.;
apd = 250.; 
tau_act = activation; 
tau_deact = relaxation;  

CaLV0 = Catgen2(Catime,0.001,Camin,CamaxLV,timing,apd,tau_act,tau_deact);

calcium = 0.60;
activation = 10;
relaxation = 50.;
Camin = 0.1; 
CamaxLV = calcium; 
timing = 50.;
apd = 250.; 
tau_act = activation; 
tau_deact = relaxation; 

CaLV1 = Catgen2(Catime,0.001,Camin,CamaxLV,timing,apd,tau_act,tau_deact);

calcium = 0.68;
activation = 10;
relaxation = 50.;
Camin = 0.1; 
CamaxLV = calcium; 
timing = 50.;
apd = 250.; 
tau_act = activation; 
tau_deact = relaxation; 

CaLV2 = Catgen2(Catime,0.001,Camin,CamaxLV,timing,apd,tau_act,tau_deact);

calcium = 0.80;
activation = 10;
relaxation = 50.;
Camin = 0.1; 
CamaxLV = calcium; 
timing = 50.;
apd = 250.; 
tau_act = activation; 
tau_deact = relaxation;  

CaLV3 = Catgen2(Catime,0.001,Camin,CamaxLV,timing,apd,tau_act,tau_deact);

figure, plot(Catime,CaLV0,'k',Catime,CaLV1,'b',Catime,CaLV2,'r',Catime,CaLV3,'g');
axis([0 0.9 0.05 0.9])
xlabel('time (ms)'); ylabel('Cai (uM)');
legend('0.5 uM','0.6 uM','baseline','0.8 uM')
