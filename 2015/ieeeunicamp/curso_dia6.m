%%
%% CURSO_DIA6.M
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DIA 6: CONTROLE DE FLUXO %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% 6.1 Operadores comparativos

a = 2^2
b = 3^2
a == b
a != b  % no MATLAB, a ~= b
a < 4
sqrt(9) <= b
a > 10.^b
factorial(a) >= b

%%% 6.2 Operadores lógicos

a = 2^2; b = 3^2;
(a+5 == b) && (~a != b)
xor(a.^2 == b.^2, 3 > 2)
~(~a || ~b)

%%% 6.3 Estruturas condicionais 

%% if.
baixo = 18;
alto = 70;
idade = input('Digite sua idade: ');
if idade < baixo
    disp('Nao pode beber brother!');
elseif idade > alto
    disp('Nao pode dirigir brother!');
else
    disp('Pode tudo brother! Menos beber e dirigir!')
end

% Exemplo em sala.
function testaintervalo(num)
    if num < 1 && num > -1
        if num < 0.5 && num > -0.5
            if num < 0.25 && num > -0.25
                disp('Num está entre -1/4 e 1/4');
            else
                disp('Num está entre -1/2 e 1/2');
            end
        else
            disp('Num está entre -1 e 1');
        end
    else
        disp('Num não está no intervalo!')
    end
end

%% switch.
idade = input('Digite sua idade: ');
switch idade
    case num2cell([0:17])
        disp('Nao pode beber brother!');
    case num2cell([70:100])
        disp('Nao pode dirigir brother!');
    otherwise
        disp('Pode tudo brother! Menos beber e dirigir!')
end

% Exemplo em sala.
function testaintswitch(num)
    switch num
        case(num2cell([-25:25]))
            disp('Num está entre -25 e 25')
        case(num2cell([-50:50]))
            disp('Num está entre -50 e 50')
        case(num2cell([-100:100]))
            disp('Num está entre -100 e 100')
        case(300)
            disp('THIS IS SPARTAAAAAAA')
        otherwise
            disp('Num não está no intervalo!')
    end
end

%% 6.4 Estruturas de repetição

%% for.
fibo = ones(1, 30);
for termo = 3:numel(fibo)
    fibo(termo) = fibo(termo-1) + fibo(termo-2);
end

%% while.
term = 100;
soma = 0;
iter = 1;
while (iter != term)
    soma = soma + (1/(iter.^2))  % equivale a (pi^2)/6
    iter++
end

%% Usuários de GNU Octave: procurem a estrutura
%% do-until
