clear all
close all
clc

Q23 = readmatrix('Q23.csv');
Q30 = readmatrix('Q30.csv');

% semilogx(Q23(:,1),db2mag(Q23(:,2)),'linewidth',1.5)
% grid on
% xlabel('VBE')
% ylabel('IC')
% title('The collector current as a function of the base-emitter voltage')

% f = Q23(:,1);
% gain = Q23(:,2);
% phase = Q23(:,3);
% subplot(2,1,1);
% semilogx(f,gain);
% xlabel('frequency(Hz)');
% ylabel('Gain(dB)');
% title('Amplitude')
% grid on
% subplot(2,1,2);
% semilogx(f,phase);
% xlabel('frequency(Hz)');
% ylabel('Phase(degree)');
% title('Phase')
% grid on

f = Q30(:,1);
gain = Q30(:,2);
phase = Q30(:,3);
subplot(2,1,1);
semilogx(f,gain);
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