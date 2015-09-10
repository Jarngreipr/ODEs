close all, clear all
% initial conditions
cs = 1000;
ce = 1;
ces = 0;
cp = 0;

y0 = [cs ce ces cp];

% parameters
k1 = 1000;
kn1 = 10^5;
kp = 250;

par = [k1;
       kn1;
       kp];
tic
[t y] = ode113(@enzkin,[0 10],y0,[],par);
toc


% 
% color = ['r' 'g' 'b' 'k' 'r-' 'g-' 'b-'];
% 
% hold on
% plot(1)
% 
% subplot(1,2,1)
% plot(t,y(:,1),color(1),t,y(:,4),color(4))
% legend('cs','cp')
% xlabel('Time [hours]')
% ylabel('Concentration [mmol/L]')
% title('Concentration profile using ode23s')
% subplot(1,2,2)
% plot(t,y(:,2),color(2),t,y(:,3),color(3))
% legend('ce','ces')
% xlabel('Time [hours]')
% ylabel('Concentration [mmol/L]')
% title('Concentration profile using ode23s')
% hold off