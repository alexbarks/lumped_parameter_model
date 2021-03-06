clear all; close all; format compact;

load baseline

plott = t;
% LVP
display1(:,1)=p(:,2);
% LVV
display2(:,1)=y(:,10);
% MV
display3(:,1)=y(:,2);
% AV
display4(:,1)=y(:,3);

load XB05

% LVP
display1(:,2)=p(:,2);
% LVV
display2(:,2)=y(:,10);
% MV
display3(:,2)=y(:,2);
% AV
display4(:,2)=y(:,3);

load XB075

% LVP
display1(:,3)=p(:,2);
% LVV
display2(:,3)=y(:,10);
% MV
display3(:,3)=y(:,2);
% AV
display4(:,3)=y(:,3);

load XB10

% LVP
display1(:,4)=p(:,2);
% LVV
display2(:,4)=y(:,10);
% MV
display3(:,4)=y(:,2);
% AV
display4(:,4)=y(:,3);

load XB125

% LVP
display1(:,5)=p(:,2);
% LVV
display2(:,5)=y(:,10);
% MV
display3(:,5)=y(:,2);
% AV
display4(:,5)=y(:,3);

subplot(3,1,1), plot(plott,display1(:,2),'k-.',plott,display1(:,3),'k:',...
             plott,display1(:,4),'k-',plott,display1(:,5),'k--')
axis([0.3 1.3 0 140])
%xlabel('time (s)')
ylabel('pressure (mmHg)')
legend('XB rate x0.5','XB rate x0.75','XB rate x1.0','XB rate x1.25')

plott = plott - 0.000;
subplot(3,1,2), plot(plott,display2(:,2),'k-.',plott,display2(:,3),'k:',...
             plott,display2(:,4),'k-',plott,display2(:,5),'k--')
axis([0.3 1.3 10 120])
%xlabel('time (s)')
ylabel('volume (ml)')
%legend('Calcium 0.5 uM','Calcium 0.6 uM','Calcium 0.7 uM','Calcium 0.8 uM')

display3 = display3/4.;
display4 = display4/4.;
subplot(3,1,3), plot(plott,display3(:,2),'k-.',plott,display3(:,3),'k:',...
             plott,display3(:,4),'k-',plott,display3(:,5),'k--',...
             plott,display4(:,2),'k-.',plott,display4(:,3),'k:',...
             plott,display4(:,4),'k-',plott,display4(:,5),'k--')
axis([0.3 1.3 0 150])
xlabel('time (s)')
ylabel('flow velocity (cm/s)')
%legend('Calcium 0.5 uM','Calcium 0.6 uM','Calcium 0.7 uM','Calcium 0.8 uM')