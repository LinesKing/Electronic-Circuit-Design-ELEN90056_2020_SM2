clear all
close all
clc

%% Q1
Q11 = readmatrix('Q11.csv');
Q12 = readmatrix('Q12.csv');
Q13 = readmatrix('Q13.csv');
Q14 = readmatrix('Q14.csv');
Q15 = readmatrix('Q15.csv');
Q16 = readmatrix('Q16.csv');
Q17 = readmatrix('Q17.csv');
Q18 = readmatrix('Q18.csv');

figure(1)
plot(Q11(:,1),Q11(:,2),...
     Q12(:,1),Q12(:,2),...
     Q13(:,1),Q13(:,2),...
     Q14(:,1),Q14(:,2),...
     Q15(:,1),Q15(:,2),...
     Q16(:,1),Q16(:,2),...
     Q17(:,1),Q17(:,2),...
     Q18(:,1),Q18(:,2));
 


xlabel('VDS')
ylabel('ID')
legend('VG = -3.1 V','VG = -3 V','VG = -2.9 V','VG = -2.8 V','VG = -2.7 V','VG = -2.6 V','VG = -2.5 V','VG = -2.4 V');
title('ID VS VDS')

%% Q2
Q2 = readmatrix('Q2.csv');
sqrtQ2 = sqrt(Q2(:,2));

figure(2)
plot(Q2(:,1),sqrtQ2)
hold on

p(1) = 0.3254; %slope
p(2) = -0.5532; %intercept with y
Vth = -p(2)/p(1)
v = Vth:0.01:0.5+Vth;
i = p(1)*v+p(2);
c = p(1)^2
plot(v,i)
hold off

xlabel('VGS')
ylabel('ID')
title('ID VS VGS')

%% Q13
figure(3)
Q013 = readmatrix('Q013.csv');
f = Q013(:,1);
gain = Q013(:,2);
phase = Q013(:,3);
subplot(2,1,1);
semilogx(f,gain);
ylim([0 60])
xlabel('frequency(Hz)');
ylabel('Gain(dB)');
title('Amplitude')
grid on
subplot(2,1,2);
semilogx(f,phase);
xlabel('frequency(Hz)');
ylabel('Phase(degree)');
title('Phase')
grid on