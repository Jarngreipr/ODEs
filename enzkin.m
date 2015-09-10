function dydt = enzkin(t, y,par)
cs = y(1,1);
ce = y(2,1);
ces = y(3,1);
cp = y(4,1);

k1 = par(1,1);
kn1 = par(2,1);
kr = par(3,1);

dydt(1,1) = -k1*cs*ce + kn1*ces;
dydt(2,1) = -k1*cs*ce + kn1*ces + kr*ces;
dydt(3,1) = k1*cs*ce - kn1*ces - kr*ces;
dydt(4,1) = kr*ces;
