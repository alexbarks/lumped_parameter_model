function F = Cacurveexp(x,xdata)

F = x(1) + x(2).*exp(-x(3).*(xdata-x(4)));