%%
%% CURSO_DIA2.M
%%
%% Material de apoio à apostila "MATLAB e GNU Octave: guia de referência" 
%% do minicurso "Introdução ao MATLAB", ministrado a pedido do Ramo 
%% Estudantil IEEE da Unicamp em setembro de 2015.
%%
%% * Autor: Alexandre 'Jaguar' Fioravante de Siqueira
%% * Contato: http://www.programandociencia.com/sobre/
%%
%% * Para citar esse material, por favor utilize a referência abaixo:
%% DE SIQUEIRA, A.F.; MACHADO, D.F.T. MATLAB e GNU Octave: guia de 
%% referência. Campinas: Programando Ciência, 2015. Disponível em: 
%% http://www.programandociencia.com/.
%%
%% Este programa é um software livre; você pode redistribuí-lo e/ou 
%% modificá-lo dentro dos termos da Licença Pública Geral GNU como 
%% publicada pela Fundação do Software Livre (FSF); na versão 3 da 
%% Licença, ou qualquer versão posterior.
%%
%% Este programa é distribuído na esperança de que possa ser útil, 
%% mas SEM NENHUMA GARANTIA; sem uma garantia implícita de ADEQUAÇÃO
%% a qualquer MERCADO ou APLICAÇÃO EM PARTICULAR. Veja a
%% Licença Pública Geral GNU para maiores detalhes.
%%
%% Você deve ter recebido uma cópia da Licença Pública Geral GNU junto
%% com este programa. Se não, veja <http://www.gnu.org/licenses/>.
%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DIA 2: MATRIZES E VETORES %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% 2.1 Vetores
vetor_1 = [1 2 3];
vetor_2 = [sin(pi) cos(pi) 0];
vetor_3 = [2^3, 6i, e^pi];

%% Para se referir a um elemento do vetor, use parênteses.
vetor_1(1)
vetor_2(3)
vetor_3(end)

%%% 2.2 Vetores por incremento
vetor_inc1 = [1:10];
vetor_inc2 = [-pi:0.1:pi];
vetor_inc3 = 10:-0.1:1;
vetor_inc4 = e^-pi:0.1:e^pi;

%%% 2.3 linspace()
vetor_lin1 = linspace(0,50,100);
vetor_lin2 = linspace(-25,25,90);
vetor_lin3 = linspace(-10,10,40);

%%% 2.4 logspace()
>> vetor_log1 = logspace(0,50,100);
>> vetor_log2 = logspace(0,15,10);
>> vetor_log3 = logspace(pi,10,40);

%%% 2.5 transpose()
vetor_1 = [1 2 3];
transpose(vetor_1)
vetor_2 = [sin(pi) cos(pi) 0];
transpose(vetor_2)
vetor_3 = [2^3, 6i, e^pi];
vetor_3'

%%% 2.6 Matrizes
matriz_1 = [1 2 3; 4 5 6];
matriz_2 = [sin(pi) 0 0; 0 cos(pi) 0; 0 0 tan(pi)];
matriz_3 = [2^3 sin(pi/3); 6i exp(10); e^pi tanh(10)];

%% Para se referir a um elemento da matriz, use parênteses e vírgulas.
matriz_1(1,2)
matriz_2(:,end)
matriz_3(2,:)
matriz_3(:,:)

%% Teste em sala.
matriz = [1 2 3; 4 5 6; 7 8 9; 10 11 12; 13 14 15];
matriz(1:3,3)
matriz(1:3,2:3)
matriz(1:3,2:end)

%% Definindo matrizes por incremento:
matriz_teste = [1:10; 10:-1:1]
%% Definindo matrizes com linspace:
matriz_teste2 = [linspace(-pi,pi,5); linspace(-2*pi,2*pi,5)];

%%% 2.7 zeros()
mat_zero1 = zeros(2)
mat_zero2 = zeros(3)
mat_zero3 = zeros([3 2])
mat_zero4 = zeros(4,3)

%%% 2.8 ones()
mat_um1 = ones(2)
mat_um2 = ones(3)
mat_um3 = ones([3 2])
mat_um4 = ones(4,3)

%%% 2.9 eye()
mat_id1 = eye(2)
mat_id2 = eye(3)
mat_id3 = eye([3 2])
mat_id4 = eye(4,3)

%%% 2.10 diag()
mat_diag1 = diag([1 2 3])
mat_diag2 = diag(4,3)
mat_diag3 = diag([1 1],2)
mat_diag4 = diag([3 2 3],-1)

%%% 2.11 rand()
mat_ale1 = rand(1,10)
mat_ale2 = rand(4,3)
mat_ale3 = rand('seed',1)
mat_ale4 = rand(3,2)

%% Números inteiros entre 0 e 100:
round(rand(1)*100)

%%% 2.12 Operações

%% adição e subtração.
vet_A = [2*pi -factorial(3) e];
vet_B = [factorial(4) pi/2 cos(pi)];
vet_A+vet_B
vet_A-vet_B

%% multiplicação.
mat_C = [sin(pi/6) cos(pi/6); cos(pi/6) sin(pi/6)];
mat_D = [sin(pi/3) cos(pi/3); cos(pi/3) sin(pi/3)];
mat_C.*mat_D
mat_C*mat_D
vet_lin = [sin(pi/3) cos(pi/3) 0];
vet_col = [sin(pi/6); cos(pi/6); 0];
10.*vet_col
vet_lin*vet_col
vet_col*vet_lin

%% divisão.
vet_E = [linspace(-1,-0.5,3); linspace(-0.5,0,3); linspace(0,0.5,3)];
vet_E./0.1
0.1./vet_E
mat_F = [1 2 3; 4 5 6; 7 8 9];
mat_F'/mat_F

%% potência.
vet_G = [exp(3); factorial(3); sin(pi/6)]
vet_G.^3
2.^vet_G
mat_H = [1 3; 5 7];
mat_H^2
e^mat_H

%%% 2.13 Funções avançadas

%% traço.
trace(mat_C)
trace(mat_H')

%% determinante.
det(mat_D)
det(mat_F)
%% vander(): matriz de Vandermonde.
%% Mais em:
% http://mathworld.wolfram.com/VandermondeMatrix.html
% http://www.mathworks.com/help/matlab/ref/vander.html
ent = 1:5;
mat_I = vander(ent);
det(mat_I)

%% matriz inversa.
inv(mat_C)
inv(mat_D)
mat_J = [1 0 -3; 2 5 0; -2 8 -6];
inv(mat_J)

%% autovalores e autovetores.
[avet, aval] = eig(mat_C)
aval = eig(mat_D)
[avet, aval] = eig(mat_I)

%% sistemas lineares.
A = [1 0; -2 3];
b = [3 -1]'
x = A\b
A*x
k = [-1 0 5]';
x2 = mat_J\k
