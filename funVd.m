function Vd = funVd(t,y,memory);

global histT histLV histRV

if (t>histT(1))
for i=length(histT):-1:2
    histT(i)=histT(i-1);
    histLV(i)=histLV(i-1);
    histRV(i)=histRV(i-1);
end
end
while (abs(t-histT(2))<1e-6 | t < histT(1))
for i=1:length(histT)-1
    histT(i)=histT(i+1);
    histLV(i)=histLV(i+1);
    histRV(i)=histRV(i+1);
end
    histT(length(histT))=histT(length(histT))-1e-6;
end
histT(1)=t;
histLV(1)=y(10);
histRV(1)=y(14);

Vd(1) = interp1(histT,histLV,t-memory);
Vd(2) = interp1(histT,histRV,t-memory);


