clear all; close all; clc; format compact; format long e;

% default calcium = 0.68
% default activation = 10.0
% default relaxation = 50.0
% default XBrate = 1.0
calcium = 0.68;
activation = 0.5;
relaxation = 40.;
Camin = 0.2; 
CamaxLV = calcium; 
timing = 7.;
apd = 145.; 
tau_act = activation; 
tau_deact = relaxation; 

Catime = [0.0:0.001:0.29];

CaLV = Catgen(Catime,0.001,Camin,CamaxLV,timing,apd,tau_act,tau_deact);

calcium = 0.66;
activation = 0.5;
relaxation = 50;
Camin = 0.2; 
CamaxLV = calcium; 
timing = 7.;
apd = 150.; 
tau_act = activation; 
tau_deact = relaxation; 

tend = 0.29;
Catime = [0.0:0.001:tend];

CaLV2 = Catgen2(Catime,0.001,Camin,CamaxLV,timing,apd,tau_act,tau_deact);

Cat=dlmread('Cat.txt','\t',1,0);
Cat(:,2) = 1000.*Cat(:,2);
Cat = Cat(5:268,:);
Cat(:,1) = Cat(:,1)-Cat(1,1);

figure, plot(Catime,CaLV2,'b',Cat(:,1)/1000.,Cat(:,2),'k');
axis([0 0.3 0.15 0.75])
xlabel('time (ms)'); ylabel('Cai (uM)');
legend('LRd model','parameter model');

CaiLRd = interp1(Cat(:,1),Cat(:,2),Catime);

Rpara = corrcoef(CaiLRd,CaLV2)
normerror = sqrt(sum((CaiLRd-CaLV2).^2))/length(CaiLRd)/(mean(CaiLRd))

figure, plot(Catime,CaLV2,'b',Catime,CaLV,'r');
axis([0 0.3 0.15 0.75])
xlabel('time (ms)'); ylabel('Cai (uM)');

Rpara = corrcoef(CaLV,CaLV2)
normerror = sqrt(sum((CaLV-CaLV2).^2))/length(CaLV)/(mean(CaLV))