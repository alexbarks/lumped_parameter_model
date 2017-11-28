function F = Cacurvesig(x,xdata)

F = x(1) + x(2)./(1.+exp(-x(3).*(xdata-x(4))));