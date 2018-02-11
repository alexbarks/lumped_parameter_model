clear all; close all; clc; format compact; format long e;

PathName ='C:\Users\Hyungkyu Huh\Desktop\lumped_image';
% MAIN VARIABLE INPUT PARAMETERS (Read paper for equations and meaning of parameters)

outputfile = './output/output_data.txt';
displaytime = 1.0;
beats = 2.0;

hr = 60.0;
vd = 0.2; % atria ventricular delay
rvlvd = 0.00; % added RV LV delay

% Atria and Ventricles
LVpar = [320. 0.68  30.  0.  0.12 60  20. -10.]; 
RVpar = [100. 0.68  40.  0.  0.12 65.  10. -5.]; 
% max physical pressure / max Ca / V0 / P0 / Ed0 / Vk / Vmin / Pmin 
LApar = [20.  0.4  0.15 10. 0.  0.06 60. 20. -5.];
RApar = [20.  0.4  0.15 10. 0.  0.06 60. 20. -5.];
% Vs0 / Es / tact / V0 / P0 / Ed0 / Vk / Vmin / Pmin

% Calcium transient parameters

Camin = 0.1; 
CamaxLV = LVpar(2); 
CamaxRV = RVpar(2); 
timing = 10.;
Ca_dur = 280.; 
tau_act = 14.; 
tau_deact = 50.; 

% Valves; last comlumn was added for calulating regurgitation JGF
TVpar  = [3 3. 1 0  0.]; 
PVvpar = [4 4. 1 0  0.]; 
MVpar  = [4 4. 1 0  0.];
AVpar  = [1 3. 1 0  0.]; 
% m / Area / Rfwd / Rbwd / ARO

% Vascular flow nodes
SCpar  = [10 1 0 1400]; 
RAIpar = [3. 1 0 100. ]; 
PCpar  = [10 1 0 130. ]; 
LAIpar = [3. 1 0 50. ]; 
% m / A / R1 / R2

% Vascular compartments
PVpar  = [400.  10.];
SApar  = [200.  1.25];
SVpar  = [3200. 10];
PApar  = [100.  5];
% V0 / C 


nameval = 'PApar_C';  %% Figure name
valo = num2str(PApar(2)); %% Location of the value in the table 

    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%
    %%   DO NOT MODIFY ANYTHING BELOW THIS LINE!!!!
    %%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    start = 0.0;
    dt = 0.0025;
    time = start:dt:start+(1.0+beats)*60.0/hr;
    rho = 1.0;
    Fmax = 1.41;
    SLR = 1.8;
    XBrate = 1.00;
    Catime = 0.0:0.001:1.0;
    
    % Calcium profile
    CaLV = Catgen(Catime,0.001,Camin,CamaxLV,timing,Ca_dur,tau_act,tau_deact);
    CaRV = Catgen(Catime,0.001,Camin,CamaxRV,timing,Ca_dur,tau_act,tau_deact);
    
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
    
    'Initializing...';
    % number of compartments
    nc = 16;
    % number of Rice XB model sets (7 state variables each)
    pRice  = 2;
    % solution vector init
    y0 = zeros(nc+7*pRice,1);
    
    load data y0;
    
    BLOOD_VOLUME = sum(y0(9:16));
    
    'computing...';
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
    end
    
    DPDTLV = diff(p(:,2))./diff(t);
    
    VOL = 20:150;
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
    %figure, plot(VOL,Pdl,VOL,Pdr);
    
    t2 = length(t);
    t1 = t2 - displaytime/dt;
    time = t(t1:t2);
    
    subplot(3,2,1), plot(time,p(t1:t2,1),time,p(t1:t2,2),time,p(t1:t2,3))
    legend('LA','LV','SA','Location','northeast');
    %xlabel('time (s)');
    ylabel('pressure (mmHg)');
    %axis([0.2 1.4 0 120])
    subplot(3,2,2), plot(time,p(t1:t2,5),time,p(t1:t2,6),time,p(t1:t2,7))
    legend('RA','RV','PA','Location','northeast');
    %xlabel('time (s)');
    %ylabel('pressure (mmHg)');
    %axis([0.2 1.4 0 40])
    
    subplot(3,2,3), plot(time,y(t1:t2,9),time,y(t1:t2,10))
    legend('LA','LV','Location','northeast');
    %xlabel('time (s)');
    ylabel('volume (ml)');
    %axis([0.2 1.4 20 120])
    subplot(3,2,4), plot(time,y(t1:t2,13),time,y(t1:t2,14))
    legend('RA','RV','Location','northeast');
    %xlabel('time (s)');
    %ylabel('volume (ml)');
    %axis([0.2 1.4 20 120])
    
    if AVpar(5)>0
        % systolic Ao velocity considers Ao valve area
        Aovel_new = y(t1:t2,3)/AVpar(2);
        % diastolic Ao velocity considers Ao regurgitant area
        % Not sure of this assumption JGF
        ind_V_AR = find(y(t1:t2,3)<0);
        Aovel_new(ind_V_AR) = Aovel_new(ind_V_AR)*AVpar(2)/AVpar(5);
    else
        Aovel_new = y(t1:t2,3)/AVpar(2);
    end
    
    %subplot(3,2,5), plot(time,y(t1:t2,2)/MVpar(2),time,y(t1:t2,3)/AVpar(2))
    subplot(3,2,5), plot(time,y(t1:t2,2)/MVpar(2),time,Aovel_new)
    legend('MV','AV','Location','northeast');
    xlabel('time (s)');
    ylabel('velocity (cm/s)');
    %axis([0.2 1.4 0 120])
    subplot(3,2,6), plot(time,y(t1:t2,6)/TVpar(2),time,y(t1:t2,7)/PVvpar(2))
    legend('TV','PV','Location','northeast');
    xlabel('time (s)');
    %ylabel('velocity (cm/s)');
    %axis([0.2 1.4 0 120])
    
    
    % figure, plot(time,y(t1:t2,17),time,y(t1:t2,18),time,y(t1:t2,19),time,y(t1:t2,20),...
    %      time,y(t1:t2,21),time,y(t1:t2,22),time,y(t1:t2,23))
    % legend('TCA','N0','N1','P0','P1','P2','P3',1);
    % xlabel('time (s)');
    % ylabel('crossbridge states');
    % %axis([0.2 1.4 0 1])
    %
    % figure, plot(time,Fnorm(t1:t2))
    % figure, plot([0.0:0.001:1.0],CaLV);
    % figure, plot(t(length(t)-(t2-t1):length(t)),DPDTLV(length(t)-(t2-t1)-1:length(t)-1));
    % sl  = SLR*(y(t1:t2,10)/40.).^0.2;
    % figure, plot(time,sl)
    %% Calculation from simulated cases JGF
    LV_Flowcal = y(t1:t2,10);
    LV_volmax=max(LV_Flowcal);
    LV_volmin=min(LV_Flowcal);
    SV = LV_volmax-LV_volmin;
    disp(strcat('Stroke Volume (ml):',num2str(SV)))
    % Note that AOR = 0 produce small negative values on the flow
    % in the order of 1x10-7, the -0.00001 threshold avoids
    % these values for the flow quantification
    Ao_reg_vols = sum(LV_Flowcal(Aovel_new<-0.00001))*dt;
    if Ao_reg_vols>0
        Ao_reg_vol = SV-Ao_reg_vols;
    else
        Ao_reg_vol = 0;
    end
    disp(strcat('Volume Regurgitant (ml):',num2str(Ao_reg_vol)))
    Ao_rf=Ao_reg_vol/SV*100;
    disp(strcat('Regurgitant Fraction (%):',num2str(Ao_rf)))
    
    
    %%% Exporting figure
    
    hinput = findall(0,'type','figure');
    
    set(hinput(1), 'PaperUnits', 'centimeters');
    set(hinput(1), 'PaperPosition', [0 0 35 25]);
    
    saveas(hinput(1),[fullfile(PathName,strcat(nameval,'_',valo)) '.png']);
    close all;
   


