function plotrhod

figure;hold on;box on;

load('rhodemtdata-T10.mat');
plot(nplt,rhod,'-m','LineWidth',3); 
hold on;
load('rhodemtdata-T70.mat');
plot(nplt,rhod,'-k','LineWidth',3); 
load('rhodemtdata-T130.mat');
plot(nplt,rhod,'-r','LineWidth',3); 
load('rhodemtdata-T190.mat');
plot(nplt,rhod,'-b','LineWidth',3); 

set(gca,'FontSize',20);
% title('(a)','FontSize', 20, 'Interpreter', 'latex');
text(-57,27,'(b)','FontSize',25);
text(-57,22,'Inhomogeneous','FontSize',19);
text(-57,18,'momentum drag','FontSize',19);
text(-48,14,'$(\eta > 0)$', 'Interpreter', 'latex','FontSize',19);


text(22,20,'$n_{A} = -n_{P}$', 'Interpreter', 'latex','FontSize',22);
legend({'$T=70K$' '$T=130K$' '$T=190K$'}, 'Interpreter', 'latex','FontSize',20, 'Location', 'SouthEast')
% xlim([-30 30])
ylim([-30 30])
xlabel('$n_{A} (10^{10} \mathrm{cm}^{-2})$', 'FontSize', 30, 'Interpreter', 'latex');
ylabel('$ \tilde{\rho}^{\mathrm{EMT}}_{D} (\Omega)$', 'FontSize', 30, 'Interpreter', 'latex');

h=gca;
h.XTick=(-60:20:60);
h.XMinorTick='on';
h.YMinorTick='on';
legend({'$T=10K$' '$T=70K$' '$T=130K$' '$T=190K$' }, 'Interpreter', 'latex','FontSize',20, 'Location','SouthEast','Orientation','Vertical')


axes('Position',[.23 .25 .22 .22])
box on

load('rhodemtdata-T10.mat');
plot(nplt,rhod,'-m','LineWidth',2); 
ylim([-0.7 0.3])
xlim([-20 20])
xlabel('$n_{A} (10^{10} \mathrm{cm}^{-2})$', 'FontSize', 12, 'Interpreter', 'latex');
ylabel('$ \tilde{\rho}^{\mathrm{EMT}}_{D} (\Omega)$', 'FontSize', 12, 'Interpreter', 'latex');
text(2,-0.25,'$T=10K$','Interpreter', 'latex','FontSize',12);
text(2,-0.40,'$n_{A} = -n_{P}$','Interpreter', 'latex','FontSize',12);
h2=gca;

h2.XTick=(-20:10:20);
h2.XMinorTick='on';
h2.YMinorTick='on';
% legend({'$T=10K$' }, 'Interpreter', 'latex','FontSize',12, 'Location','NorthEast','Orientation','Vertical')

set(gca, 'FontSize', 12, 'FontWeight', 'bold', 'LineWidth', 2);



print('-dpdf','Fig4b.pdf')

end