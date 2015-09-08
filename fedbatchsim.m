function dydt = fedbatchsim(t,y,par)
umax = par(1);
Ks = par(2);
Ysx = par(3);
Yxp = par(4);
F = par(5);
Sf = par(6);

S = y(2);
V = y(1);
X = y(3);
P = y(4);

dydt(1,1) = F;
dydt(2,1) = umax*S/(S+Ks)*X - (X*F)/V;
dydt(3,1) = (F*Sf)/V - umax/Ysx*S/(S+Ks)*X - (S*F)/V;
dydt(4,1) = Yxp*umax*S/(S+Ks)*X - (P*F)/V;