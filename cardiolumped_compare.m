function dy = cardiolumped(t,y,PV_LV,PV_RV,PV_LA,PV_RA,LVpar,RVpar,LApar,RApar,...
                   TVpar,PVvpar,MVpar,AVpar,SCpar,RAIpar,PCpar,LAIpar,PVpar,SApar,...
                   SVpar,PApar,hr,vd,rho,CaLV,CaRV,rvlvd,nc,pRice,Fmax,t0,activate,LVEs,RVEs)

             
               
% index in the following array is node number, values are nodes before and after.
CCMin  = [16;  9; 10; 11; 12; 13; 14; 15; 1; 2; 3; 4; 5; 6; 7; 8];
CCMout = [ 9; 10; 11; 12; 13; 14; 15; 16; 2; 3;  4; 5; 6; 7; 8; 1];

flow = [1; 2; 3; 4; 5; 6; 7; 8];
volume = [9; 10; 11; 12; 13; 14; 15; 16];
valves = [2,3,6,7];

lvd = vd;
rvd = vd + rvlvd;

dy = zeros(nc,1);

% pressures
p(9)  = PatriumNL(t,hr,y(9),LApar,PV_LA,t0);
p(10) = Pventricle(t,hr,vd,y(10),LVpar,PV_LV,activate,LVEs);
p(11) = Pchamber(y(11),SApar);
p(12) = Pchamber(y(12),SVpar);
p(13) = PatriumNL(t,hr,y(13),RApar,PV_RA,t0);
p(14) = Pventricle(t,hr,vd,y(14),RVpar,PV_RV,activate,RVEs);
p(15) = Pchamber(y(15),PApar);
p(16) = Pchamber(y(16),PVpar);

p = 133.0 * 10.0 * p; % unit conversion from mmHg to g-cm-s

% flow rates
dy(1) = funValveDY(y,p,LAIpar,1,rho,CCMin,CCMout,4,valves);
dy(2) = funValveDY(y,p,MVpar,2,rho,CCMin,CCMout,5,valves);
dy(3) = funValveDY(y,p,AVpar,3,rho,CCMin,CCMout,5,valves);
dy(4) = funValveDY(y,p,SCpar,4,rho,CCMin,CCMout,4,valves);
dy(5) = funValveDY(y,p,RAIpar,5,rho,CCMin,CCMout,4,valves);
dy(6) = funValveDY(y,p,TVpar,6,rho,CCMin,CCMout,5,valves);
dy(7) = funValveDY(y,p,PVvpar,7,rho,CCMin,CCMout,5,valves);
dy(8) = funValveDY(y,p,PCpar,8,rho,CCMin,CCMout,4,valves);

% volume
for i=1:length(volume)
    dy(volume(i)) = funVolumeDY(y,volume(i),CCMin,CCMout);
end

return


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


