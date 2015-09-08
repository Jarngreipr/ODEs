clear, clc, close all
% Biomass
umax = 0.24; Ks = 1; Ysx = 0.5; Yxp = 0.02;

% Feed
F = 0.2; Sf = 10;

% Parameters
par = [umax Ks Ysx Yxp F Sf];

% Initial conditions
V = 0.1; S = 1.3; X = 2; P = 0.02;
y = [V S X P];

mins = 30*60;
t = [0 mins];

[s v x p] = ode45(@fedbatchsim, t, y, [], par);

T = [0:mins];
plot(T,s)

