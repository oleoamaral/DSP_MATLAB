% -------------------------------------------------------------------------
% Onda Senoidal
% -------------------------------------------------------------------------
% Autor: Leonardo Amaral
% Data: 2024/01
% Descrição: Código de um sinal senoidal adaptado do livro "Digital 
% Modulations using Matlab" de Mathuranathan Viswanathan. 
% -------------------------------------------------------------------------

clc; close all; clear all; 

f = 10; % Hz, frequência da onda senoidal 
V = 1; % V, amplitude da onda senoidal
overSampRate = 30; % taxa de sobreamostragem 
fs = overSampRate*f; % taxa de amostragem
phase = 1/3*pi; % deslocamento de fase em radianos
nCyl = 5; % gera cinco ciclos da onda
t = 0:1/fs:nCyl*1/f-1/fs; % base de tempo

g = V*sin(2*pi*f*t*phase); % equação do sinal 

plot(t,g); % plota o sinal
grid on; % mostra linhas de grade
title(['Onda Senoidal f = ', num2str(f), ' Hz']); % adiciona título
xlabel('t (s)'); % adiciona título no eixo x
ylabel('Amplitude (V)'); % adiciona título no eixo y