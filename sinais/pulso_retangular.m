% -------------------------------------------------------------------------
% Pulso Retangular
% -------------------------------------------------------------------------
% Autor: Leonardo Amaral
% Data: 2024/01
% Descrição: Código de um pulso retangular adaptado do livro "Digital 
% Modulations using Matlab" de Mathuranathan Viswanathan. 
% -------------------------------------------------------------------------

clc; close all; clear all; 

fs =500; % taxa de amostragem 
V = 1; % V, amplitude do pulso retangular
T = 0.2; % s, largura do pulso retangular
t = -0.5:1/fs:0.5; % base de tempo

g = V*((t>-T/2).*(t<T/2)+0.5*(t==T/2)+0.5*(t==-T/2)); % equação do sinal

plot(t,g); % plota o sinal
grid on; % mostra linhas de grade
title(['Pulso retangular com largura = ', num2str(T), ' s']); % adiciona título
xlabel('t (s)'); % adiciona título no eixo x
ylabel('Amplitude (V)'); % adiciona título no eixo y