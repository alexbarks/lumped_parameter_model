function Cap=Catgen(time,dt,Camin,Camax,timing,apd,tau_act,tau_deact);

time = time*1000;
dt = dt*1000;

% 4 part to calcium profile:
% 1) sigmoid for increase
% 2) parabolic connect between part 1 and 3
% 3) sigmoid decrease
% 4) linear connect

% MAIN

t1_index = round((timing + 7.*tau_act)/dt);
t2_index = round((timing + 7.*tau_act + apd)/dt);
t3_index = round((timing + 7.*tau_act + apd + 4*tau_deact)/dt);
if (t3_index>length(time))
    t3_index=length(time);
end

Capa1(1) = Camin; 
Capa1(2) = Camax-Camin; 
Capa1(3) = 1./tau_act;
Capa1(4) = timing;
Capa3(1) = Camin; 
Capa3(2) = 0.55*Camax-Camin; 
Capa3(3) = 1./tau_deact;
Capa3(4) = t2_index-0.5*tau_deact;

Cap1 = Cacurvesig(Capa1,time(1:t1_index));
Cap3 = Cacurveexp(Capa3,time(t2_index:t3_index));

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

