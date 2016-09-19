%%
%% CURSO_DIA3.M
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DIA 3: GRÁFICOS BIDIMENSIONAIS %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% 3.1 plot()
x = linspace(-pi,pi,250);
plot(x,-x.^2)
plot(x,exp(x).*sec(x))

%%% 3.2 Rótulos
x = -2:0.1:2;
plot(x,x.^2)
title('Gráfico 2D.')
xlabel('x')
ylabel('x^2')

%%% 3.3 legend()
x = -2:0.1:2;
plot(x,x.^2)
legend('x^2','location','northeast')
legend('boxoff')
figure;
plot(x,x.^3)
legend('x^3','location','southwest')

%%% 3.4 axis()
x = linspace(-5,5,250);
plot(x,1./x)
axis([-2 2 -2 2])

%%% 3.5 grid/grid minor
x = linspace(-5,5,250);
plot(x,1./x)
grid on
grid minor on
grid off

%%% 3.6 Opções para linhas
x = -2:0.1:2;
plot(x,-x.^2,'--')
plot(x,sec(x),'-.')
plot(x,1./x,':')

%%% 3.7 Opções para símbolos
x = -5:0.1:5;
plot(x,-1./x,'d')
plot(x,-x.^2,'*')
plot(x,sec(x),'o')

%%% 3.8 Opções para cores
x = -5:0.1:5;
plot(x,-1./x,'y')
plot(x,-x.^2,'c')
plot(x,sec(x),'r')

%%% 3.9 Argumentos
x = -5:0.1:5;
plot(x,-1./x,'linewidth',3)
plot(x,-x.^2,'*','markerfacecolor','r')
plot(x,sec(x),'d','markersize',3)

%%% 3.10 Vários gráficos, uma janela

%% usando plot().
x = -5:0.05:5;
plot(x,-1./x,x,-x.^2,x,exp(x),x,sec(x))

%% usando hold.
x = -5:0.05:5;
hold on;
plot(x,-1./x)
plot(x,-x.^2)
plot(x,exp(x))
plot(x,sec(x))
hold off;

%% usando subplot().
x = -5:0.05:5;
subplot(221)
plot(x,-1./x)
subplot(222)
plot(x,-x.^2)
subplot(223)
plot(x,exp(x))
subplot(224)
plot(x,sec(x))

%%% 3.11 Outros tipos de gráficos disponíveis
mat_rand = 100*rand(3,4);
bar(mat_rand)  %% bar plot
vet_rand1 = 100*rand(1,50);
vet_rand2 = 100*rand(1,50);
scatter(vet_rand1,vet_rand2)  %% dispersion plot
stairs(vet_rand1)  %% stairs plot
hist(vet_rand1)  %% histogram
stem(vet_rand1)  %% discrete dots
vet_rand3 = 100*rand(1,6);
pie(vet_rand3)  %% pie plot
