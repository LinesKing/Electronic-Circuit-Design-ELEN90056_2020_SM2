%% %% Q2 %% %%
clear all
close all
clc

%% Parameters
V_T = 26 * 10^(-3); % V_T
delta = 1; % initial value of loop flag
V_BE = 0.75; % initial value of V_BE

beta = 100; % beta
I_S = 6 * 10^(-16); % I_S
R_C = 0 * 10^3; % R_C
R_E = 0; % R_E
V_CC = 2.5; % V_CC
R_th = 10 * 10^3; % Thevenin equivalent resistance
V_th = 2.5; % Thevenin equivalent voltage

%% Iteration of V_BE
while delta > 0.0001 % threshold
    I_C = beta * (V_th - V_BE) / (R_th + R_E*(1+beta));
    V_BEnew = V_T * log(I_C/I_S);
    delta = abs(V_BE - V_BEnew);
    V_BE = V_BEnew;
end
I_C = beta * (V_th - V_BE) / (R_th + R_E*(1+beta));
I_B = I_C / beta;
I_E = (beta+1) * I_B;
V_CE = V_CC - I_C * R_C - I_E * R_E;

%% Operation point
fprintf('I_C = %.3f mA \n',I_C * 10^3);
fprintf('I_B = %.3f uA \n',I_B * 10^6);
fprintf('V_CE = %.3f V \n',V_CE);
fprintf('V_BE = %.3f V \n',V_BE);
