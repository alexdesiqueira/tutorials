%%
%% CURSO_DIA1.M
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DIA 1: COMANDOS BÁSICOS %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% 1.3 disp()
disp('Fala, FEEC!');

%%% 1.4 input()
seu_nome = input('Qual o seu nome? ', 's');
sua_idade = input('Qual a sua idade? ');

%%% 1.5 help()
help disp;
help input;

%%% 1.6 Operadores básicos
2+4-10
3*9
100/(4*3)
sqrt(100)
6^(4-2)
nthroot(64,3)

%%% 1.7 factorial()
factorial(4)
factorial(3)*9
100/factorial(4*3)

%%% 1.8 abs()
abs(37)
abs(-37)

%%% 1.9 Funções trigonométricas
sin(pi/6)+cos(0)
sind(90)+cosd(0)
sec(pi/4)*cot(pi/4)
secd(45)*cotd(90)
tan(csc(2*pi/3))
tand(csc(120))

%%% 1.10 Funções trigonométricas inversas
asin(1/2)
asind(1/2)
sec(45)*cot(90)
secd(45)*cotd(90)
tan(csc(120))
tand(csc(120))

%%% 1.11 Funções trigonométricas hiperbólicas
sinh(pi/6)+cosh(pi/6)
tanh(2*pi)/csch(3*pi/2)
sech(coth(pi/4))

%%% 1.12 Funções trigonométricas hiperbólicas inversas
asinh(pi^3)
asech(pi/10)
acsch(pi/4)

%%% 1.13 Exponencial e logaritmo
exp(10)
log(e)
log2(64)
log10(1000)

%%% 1.14 Números complexos
real(3+4i)
imag(3+4j)
conj(3+4i)
angle(3+4j)

%%% Exercício 1:
%% Verifique a identidade de Euler:
e^(i*pi) + 1
%% ou
exp(i*pi) + 1
%% Também verifique que e^(i*pi) é igual a cos(pi)+i*sin(pi).

%%% Exercício 2:
%% Calcule o discriminante da equação A*X^2+B*X+C = 0, com 
%% A, B e C dados pelo usuário.
coef_A = input('Digite o valor do coeficiente A: ');
coef_B = input('Digite o valor do coeficiente B: ');
coef_C = input('Digite o valor do coeficiente C: ');
delta = coef_B^2 - 4*coef_A*coef_C;
disp('O valor do discriminante é ');
disp(delta);

%%% Exercício 3:
%% Calcule o discriminante da equação A*X^3+B*X^2+C*X+D = 0, com 
%% A, B, C e D dados pelo usuário. Use a equação abaixo:
%% DISCRIMINANTE = 18*A*B*C*D-4*B^3*D+B^2*C^2-4*A*C^3-27*A^2*D^2.

A = input('Digite o valor do coeficiente A: ');
B = input('Digite o valor do coeficiente B: ');
C = input('Digite o valor do coeficiente C: ');
D = input('Digite o valor do coeficiente D: ');
delta = 18*A*B*C*D-4*B^3*D+B^2*C^2-4*A*C^3-27*A^2*D^2;
disp('O valor do discriminante é ');
disp(delta);

%% Tem mais sobre funções cúbicas na Wikipedia:
% https://en.wikipedia.org/wiki/Cubic_function

%%% Exercício 4:
%% Os três primeiros termos da série de Maclaurin para sec(x) 
% entre -1 e 1 são: 1, (1/2)*x^2 e (5/24)*x^4.
%% Calcule a aproximação para:
sec(-0.3)
sec(0.9)
%% Calcule também a aproximação com quatro e cinco termos.
%% Quarto termo: (61/720)*x^6; quinto termo: (277/8064)*x^8
%% Mais séries de Maclaurin em: 
% http://mathworld.wolfram.com/MaclaurinSeries.html

%%% Funções citadas (ou que deveriam ter sido):
%% int2str(num): converte o inteiro num em uma string.
%% strcat(string1,string2): concatena (cola) string1 e string2.
%% printf(string,vars): saída formatada. As variáveis podem ser:
%% * inteiro, %i.
%% * real, %f.
%% * notação científica, %e.
%% Um exemplo:
num1 = 3.1415
num2 = 3.1415
str1 = 'teste';
printf('Num inteiro: %i. Num real: %f. Esse é um %s.\n', num1, num2, str1);
%% \n termina a linha.
%% Nos Exercícios 2 e 3 poderíamos usar:
printf('O valor do discriminante é %f.', delta);

%% Mais sobre exibição de resultados em:
% http://en.wikibooks.org/wiki/Octave_Programming_Tutorial/Text_and_file_output

%% Sobre a notação científica no Octave e os números "próximos de zero", 
%% vale dar uma lida no texto abaixo:
%http://wiki.octave.org/FAQ#Why_is_this_floating_point_computation_wrong.3F
%% Algumas funções para remediar o problema são dadas nestes endereços: 
% http://www.chemie.fu-berlin.de/chemnet/use/info/octave/octave_8.html
% http://www.gnu.org/software/octave/doc/interpreter/Utility-Functions.html
%% Use-as com cuidado! Exemplos:
%% BONS exemplos do uso de fix():
fix(e^(i*pi))
fix(sin(pi))
%% MAUS exemplos do uso de fix():
fix(pi)
fix(e)
