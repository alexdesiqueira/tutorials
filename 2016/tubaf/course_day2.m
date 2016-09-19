%%
%% COURSE_DAY2.M
%%
%% Supporting material to the short course "GNU Octave", given at the
%% TU Bergakademie Freiberg in May 2016.
%%
%% * Author: Dr. Alexandre de Siqueira
%% * Contact: http://www.programandociencia.com/about/
%%
%% * To cite this material please use the reference below:
%% de Siqueira, A.F. MATLAB & GNU Octave: reference guide. Campinas:
%% Programando Ciência, 2015. Available at:
%% http://www.programandociencia.com/.
%%
%% This program is free software: you can redistribute it and/or modify
%% it under the terms of the GNU General Public License as published by
%% the Free Software Foundation, either version 3 of the License, or
%% (at your option) any later version.
%%
%% This program is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%% GNU General Public License for more details.
%%
%% You should have received a copy of the GNU General Public License
%% along with this program.  If not, see <http://www.gnu.org/licenses/>.
%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% PART 3: TWO-DIMENSIONAL PLOTS %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% 3.1 plot()
x = linspace(-pi,pi,250);
plot(x,-x.^2)
plot(x,exp(x).*sec(x))

%%% 3.2 Labels
x = -2:0.1:2;
plot(x,x.^2)
title('2D plot.')
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

%%% 3.6 Line options
x = -2:0.1:2;
plot(x,-x.^2,'--')
plot(x,sec(x),'-.')
plot(x,1./x,':')

%%% 3.7 Symbol options
x = -5:0.1:5;
plot(x,-1./x,'d')
plot(x,-x.^2,'*')
plot(x,sec(x),'o')

%%% 3.8 Color options
x = -5:0.1:5;
plot(x,-1./x,'y')
plot(x,-x.^2,'c')
plot(x,sec(x),'r')

%%% 3.9 Arguments
x = -5:0.1:5;
plot(x,-1./x,'linewidth',3)
plot(x,-x.^2,'*','markerfacecolor','r')
plot(x,sec(x),'d','markersize',3)

%%% 3.10 Several plots, one window

%% Using plot():
x = -5:0.05:5;
plot(x,-1./x,x,-x.^2,x,exp(x),x,sec(x))

%% Using hold:
x = -5:0.05:5;
hold on;
plot(x,-1./x)
plot(x,-x.^2)
plot(x,exp(x))
plot(x,sec(x))
hold off;

%% Using subplot():
x = -5:0.05:5;
subplot(221)
plot(x,-1./x)
subplot(222)
plot(x,-x.^2)
subplot(223)
plot(x,exp(x))
subplot(224)
plot(x,sec(x))

%%% 3.11 Another available plots
mat_rand = 100*rand(3,4);

%% Bar plot:
bar(mat_rand)
vec_rand1 = 100*rand(1,50);
vec_rand2 = 100*rand(1,50);

%% Dispersion plot:
scatter(vec_rand1,vec_rand2)

%% Stairs plot:
stairs(vec_rand1)

%% Histogram:
hist(vec_rand1)
stem(vec_rand1)

%% Discrete dots:
vec_rand3 = 100*rand(1,6);

%% Pie plot:
pie(vec_rand3)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% PART 4: THREE-DIMENSIONAL PLOTS %%%
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

%%% 4.3 Another available plots

%% Contour and filled contour:
linx1 = 0:0.1:10;
contour(linx1’*linx1)
contourf(linx1’*linx1)
liny1 = -10:0.1:10;
contour(linx1’*-liny1)
contourf(linx1’*-liny1)

%% Dispersion:
randx1 = rand(1,100);
randy1 = rand(1,100);
randz1 = randx1+randy1;
scatter3(randx1,randy1,randz1,’filled’)
randz2 = rand(1,numel(linx1));
scatter3(linx1,liny1,randz2)

%% Mesh and mesh with contours:
linx2 = liny2 = -pi:0.1:pi;
[xx, yy] = meshgrid(linx2,liny2);
mesh(xx,yy,xx.^2+yy.^2)
meshc(xx,yy,xx.^2+yy.^2)
contourf(xx,yy,xx.^2+yy.^2)
figure;
mesh(xx,yy,sin(xx)+cos(yy))
meshc(xx,yy,sin(xx)+cos(yy))
contourf(xx,yy,sin(xx)+cos(yy))

%% Surface and surface with countours:
surf(xx,yy,xx.^2+yy.^2)
surfc(xx,yy,xx.^2+yy.^2)
figure;
surf(xx,yy,sin(xx)+cos(yy))
surfc(xx,yy,sin(xx)+cos(yy))
