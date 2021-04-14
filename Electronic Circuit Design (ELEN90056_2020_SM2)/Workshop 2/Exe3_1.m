clear all
close all
clc

Q5 = readmatrix('Q5.csv');

plot(Q5(:,1),Q5(:,2),'linewidth',1.5)
xlabel('VBE')
ylabel('IC')
title('The collector current as a function of the base-emitter voltage')
