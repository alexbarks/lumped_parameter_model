function F = funVn(x,V0,Vmin,Pmin,Pd0,Ed0)

F = x*(1.0-exp((V0-Vmin)/x))-(Pmin-Pd0)/Ed0;

return