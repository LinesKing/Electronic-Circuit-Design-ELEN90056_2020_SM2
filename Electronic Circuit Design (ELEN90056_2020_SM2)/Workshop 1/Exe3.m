clear all
close all
clc

M1 = readmatrix('Exe3_1N4004.csv');
M2 = readmatrix('Exe3_1N4148.csv');
M3 = readmatrix('Exe3_LED.csv');

plot(M1(:,1),M1(:,2),M2(:,1),M2(:,2),M3(:,1),M3(:,2))
legend('1N4004','1N4148','LED');
title('I-V characteristic of 1N4004, 1N4148 and an LED')
