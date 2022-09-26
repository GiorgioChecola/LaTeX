clc
clear all
close all

Cp = 10^19;
XL = 0.1;
Xj = 0.5;
Xj2 = 0.2628;
x = 0:10^-5:0.7;
Gauss1 = Cp*exp(-(x/XL).^2);

Cp2 = 10^16/exp(-(Xj/XL).^2);
Gauss2 = Cp2*exp(-(x/XL).^2);
% 
% figure
% semilogy(x,Gauss1)
% grid on
% hold on
% semilogy(x, ones(length(x),1)*10^16)
% semilogy([Xj2 Xj2], [10^-2 10^20],'m--');
% xlim([0 0.6])
% ylim([1 10^20])
% xlabel("depth $\mu m$",'Interpreter','latex')
% ylabel("Doping concentration $\frac{at.P}{cm^3}$",'Interpreter','latex')
% legend('Gaussian Profile n+','Substrate Doping','Junction Depth','Location','best')
% 
% figure
% semilogy(x,Gauss2)
% grid on
% hold on
% semilogy(x, ones(length(x),1)*10^16)
% semilogy([Xj Xj], [10^5 10^30],'m--')
% xlim([0 0.6])
% xlabel("depth $\mu m$",'Interpreter','latex')
% ylabel("Doping concentration $\frac{at.P}{cm^3}$",'Interpreter','latex')
% legend('Gaussian Profile n+','Substrate Doping','Junction Depth','Location','best')
Xp = 0.5-0.1*sqrt(log(10^19/10^16));
Gauss3 =  Cp*exp(-((x-Xp)/XL).^2);
figure
semilogy(x,Gauss3)
grid on
hold on
semilogy(x, ones(length(x),1)*10^16)
semilogy([Xj Xj], [10^5 10^30],'m--')
semilogy([Xp Xp], [10^5 10^19],'k--')
plot(Xp,10^19,'r.','MarkerSize',10)
xlim([0 0.6])
ylim([10^13 10^20])
xlabel("depth $\mu m$",'Interpreter','latex')
ylabel("Doping concentration $\frac{at.P}{cm^3}$",'Interpreter','latex')
legend('Gaussian Profile n+','Substrate Doping','Junction Depth','Location','best')