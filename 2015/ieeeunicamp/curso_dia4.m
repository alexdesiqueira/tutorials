%%
%% CURSO_DIA4.M
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DIA 4: GRÁFICOS TRIDIMENSIONAIS %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% 4.1 plot3()
x = -2*pi:0.1:2*pi;
plot3(x,sin(exp(x)))
plot3(x,sin(x).^2,cos(x),x,cos(x).^2,sin(x));
figure;
y = 1:0.1:e;
plot3(y,y.^2,exp(y),y,y.^3,log(y));

%%% 4.2 meshgrid()
x1 = [1 2 3 4 5];
meshgrid(x1)
y1 = [5 4 3 2 1];
[xx1, yy1] = meshgrid(x1,y1)
x2 = y2 = 0:0.1:pi;
[xx2, yy2] = meshgrid(x2,y2)

%%% 4.3 Outros tipos de gráficos disponíveis

%% contorno e contorno preenchido.
linx1 = 0:0.1:10;
contour(linx1’*linx1)
contourf(linx1’*linx1)
liny1 = -10:0.1:10;
contour(linx1’*-liny1)
contourf(linx1’*-liny1)

%% dispersão.
randx1 = rand(1,100);
randy1 = rand(1,100);
randz1 = randx1+randy1;
scatter3(randx1,randy1,randz1,’filled’)
randz2 = rand(1,numel(linx1));
scatter3(linx1,liny1,randz2)

%% malha e malha com contornos.
linx2 = liny2 = -pi:0.1:pi;
[xx, yy] = meshgrid(linx2,liny2);
mesh(xx,yy,xx.^2+yy.^2)
meshc(xx,yy,xx.^2+yy.^2)
contourf(xx,yy,xx.^2+yy.^2)
figure;
mesh(xx,yy,sin(xx)+cos(yy))
meshc(xx,yy,sin(xx)+cos(yy))
contourf(xx,yy,sin(xx)+cos(yy))

%% superfície e superfície com contornos.
surf(xx,yy,xx.^2+yy.^2)
surfc(xx,yy,xx.^2+yy.^2)
figure;
surf(xx,yy,sin(xx)+cos(yy))
surfc(xx,yy,sin(xx)+cos(yy))
