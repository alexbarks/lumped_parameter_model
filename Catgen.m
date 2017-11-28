function Cap=Catgen(time,dt,Camin,Camax,timing,apd,tau_act,tau_deact);

time = time*1000;
dt = dt*1000;

% MAIN
Capa1(1) = Camin; 
Capa1(2) = Camax-Camin; 
Capa1(3) = 1./tau_act;
Capa1(4) = timing;
Capa3(1) = Camax-0.015*Camax; 
Capa3(2) = -(Camax-Camin); 
Capa3(3) = 1./tau_deact;
Capa3(4) = apd + timing;

t1_index = round((timing + 7.*tau_act)/dt);
t2_index = round((timing + apd - 1.35*tau_deact)/dt);
t3_index = round(2.*(apd)/dt);

Cap1 = Cacurvesig(Capa1,time(1:t1_index));
Cap3 = Cacurvesig(Capa3,time(t2_index:t3_index));

% Parabola connect
deltat = time(t2_index) - time(t1_index);
slope  = (Cap3(1)-Cap3(2))/dt;
b = deltat*slope/(Cap1(length(Cap1))-Cap3(1));
a = (Cap1(length(Cap1))-Cap3(1))/(deltat^b);
Cap2 = Cap1(length(Cap1))*ones(t2_index-t2_index+1)-a*(time(t1_index:t2_index)-time(t1_index)*ones(t2_index-t2_index+1)).^b;

% Linear connect
m2 = (Cap3(max(size(Cap3)))-Cap1(1))/(time(t3_index)-time(max(size(time))));
t2 = time(max(size(time)));
c2 = Cap1(1);
Cap4 = m2*(time(t3_index:max(size(time)))-t2)+c2;

% connect 4 pieces
Cap = [Cap1 Cap2(2:max(length(Cap2))-1) Cap3 Cap4(2:max(length(Cap4)))];

