%%
%% RDVW_MATLABHANDSON.M
%%
%% Supporting material to the MATLAB hands-on session introduction
%% on the Research Data Visualization Workshop (RDVW), hosted by the
%% Software Sustainability Institute at the University of Manchester
%% in July 2016.
%%
%% * Author: Dr. Alexandre de Siqueira
%% * Contact: http://www.programandociencia.com/about/
%%
%% * Please use the reference below to cite this material:
%% de Siqueira, A.F. Octave: Seus primeiros passos na programação
%% científica. São Paulo: Casa do Código, 2015.
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


% We will use the Fisher's Iris data on this example. There are several
% places to get it; I got the version from The University of Alabama in
% Huntsville's Random (http://www.math.uah.edu/stat/index.html), a
% support site for teachers and students. This is the link for Fisher's
% data:
% http://www.math.uah.edu/stat/data/Fisher.html
% There are other datasets available on:
% http://www.math.uah.edu/stat/data/index.html

% Another interesting place for data is the University of California,
% Irvine's collection of datasets.
% It's Fisher's dataset is on:
% http://archive.ics.uci.edu/ml/datasets/Iris
% And all available datasets, divided by data type, attributes, science
% area, and more are on:
% http://archive.ics.uci.edu/ml/datasets.html

% Preventing crashes on GNU Octave 4.0.X.
graphics_toolkit('fltk');

% UAH's Fisher dataset comes in CSV or TXT. We will use the CSV file.
% In order to read the dataset, we use the function csvread().
fisher = csvread('fisherdata.csv');

% We can also read the file from the second row.
fisher = csvread('fisherdata.csv', 1, 0);

% Let's separate information for petal width, petal length, sepal
% width and sepal length.
petal_width = fisher(:, 2);
petal_length = fisher(:, 3);
sepal_width = fisher(:, 4);
sepal_length = fisher(:, 5);

% Now, in Octave, we need to load the statistics package. If you don't
% have it installed, use the command 'pkg install':
% pkg install -forge statistics
% And then, 'pkg load' loads the package.
pkg load statistics

% The function boxplot(), which we are using now, is inside the
% statistics package. Let's generate box plots from these data.
figure();
axis ([0, 5]);
boxplot ({petal_width, petal_length, sepal_width, sepal_length});
% Now, we improve this plot a little bit changing font size and info
% on the X axis.
set(gca, 'Fontsize', 18, 'xtick', [1 2 3 4], 'xticklabel', {'Petal width', 'Petal length', 'Sepal width', 'Sepal length'})
title ('Distribution of each width and length.');

% Let's create a (nasty) color vector for generating a set of scatter
% plots.
len_fisher = length(fisher(:, 1));
fisher_color = zeros(len_fisher, 1);

for i = 1:len_fisher
    if fisher(:,1)(i) == 0
        fisher_color(i) = 0;
    elseif fisher(:,1)(i) == 1
        fisher_color(i) = 110;
    else
        fisher_color(i) = 220;
    end
end

% Now, plotting a scatterplot from all data.
figure();

%% Line 1:
subplot(441)
text(0.15, 0.4, 'Sepal.Length', 'Fontsize', 18);
set(gca, 'Fontsize', 18);
axis('off')

subplot(442)
scatter(sepal_width, sepal_length, s=7, c=fisher_color, 'filled');
set(gca, 'Fontsize', 18);

subplot(443)
scatter(petal_length, sepal_length, s=7, c=fisher_color, 'filled');
set(gca, 'Fontsize', 18);

subplot(444)
scatter(petal_width, sepal_length, s=7, c=fisher_color, 'filled');
set(gca, 'Fontsize', 18);

%% Line 2:
subplot(445)
scatter(sepal_length, sepal_width, s=7, c=fisher_color, 'filled');
set(gca, 'Fontsize', 18);

subplot(446)
text(0.15, 0.6, 'Sepal.Width', 'Fontsize', 18);
set(gca, 'Fontsize', 18);
axis('off')

subplot(447)
scatter(petal_length, sepal_width, s=7, c=fisher_color, 'filled');
set(gca, 'Fontsize', 18);

subplot(448)
scatter(petal_width, sepal_width, s=7, c=fisher_color, 'filled');
set(gca, 'Fontsize', 18);

%% Line 3:
subplot(4, 4, 9)
scatter(sepal_length, petal_length, s=7, c=fisher_color, 'filled');
set(gca, 'Fontsize', 18);

subplot(4, 4, 10)
scatter(sepal_width, petal_length, s=7, c=fisher_color, 'filled');
set(gca, 'Fontsize', 18);

subplot(4, 4, 11)
text(0.15, 0.6, 'Petal.Length', 'Fontsize', 18);
set(gca, 'Fontsize', 18);
axis('off')

subplot(4, 4, 12)
scatter(petal_width, petal_length, s=7, c=fisher_color, 'filled');
set(gca, 'Fontsize', 18);

%% Line 4:
subplot(4, 4, 13)
scatter(sepal_length, petal_width, s=7, c=fisher_color, 'filled');
set(gca, 'Fontsize', 18);

subplot(4, 4, 14)
scatter(sepal_width, petal_width, s=7, c=fisher_color, 'filled');
set(gca, 'Fontsize', 18);

subplot(4, 4, 15)
scatter(petal_length, petal_width, s=7, c=fisher_color, 'filled');
set(gca, 'Fontsize', 18);

subplot(4, 4, 16)
text(0.15, 0.6, 'Petal.Width', 'Fontsize', 18);
set(gca, 'Fontsize', 18);
axis('off')

% A little trick to set the main title.
ha = axes('Position', [0 0 1 1], 'Xlim', [0 1], 'Ylim', [0 1], 'Box', 'off', 'Visible', 'off', 'Units', 'normalized', 'clipping', 'off');
text(0.5, 1,'\bf Fishers Iris. Blue: Setosa; red: Versicolor; green: Virginica','HorizontalAlignment','center','VerticalAlignment', 'top', 'Fontsize', 19);

% In the first column we have the types of each Iris. Type 0 is Setosa;
% type 1 is Verginica; type 2 is Versicolor.
% Let's check the indexes for the first 10 elements containing Setosa
% data.
for idx = 1:10
    if fisher(idx, 1) == 0
        disp(idx)
    end
end

% Now we will separate Setosa, Virginica and Versicolor using logical
% indexing...
idx_setosa = fisher(:, 1) == 0;
idx_virginica = fisher(:, 1) == 1;
idx_versicolor = fisher(:, 1) == 2;

fisher_setosa = fisher(idx_setosa, :);
fisher_virginica = fisher(idx_virginica, :);
fisher_versicolor = fisher(idx_versicolor, :);

% ... so we can generate boxplots for each Iris type.
figure();

subplot(221)
axis([0, 4]);
boxplot({fisher_setosa(:, 2), fisher_virginica(:, 2), fisher_versicolor(:, 2)});
set(gca, 'Fontsize', 18, 'xtick', [1 2 3], 'xticklabel', {'Iris setosa', 'Iris virginica', 'Iris versicolor'})
ylabel('Petal width (PW)');

subplot(222)
axis([0, 4]);
boxplot({fisher_setosa(:, 3), fisher_virginica(:, 3), fisher_versicolor(:, 3)});
set(gca, 'Fontsize', 18, 'xtick', [1 2 3], 'xticklabel', {'Iris setosa', 'Iris virginica', 'Iris versicolor'})
ylabel('Petal length (PL)');

subplot(223)
axis([0, 4]);
boxplot({fisher_setosa(:, 4), fisher_virginica(:, 4), fisher_versicolor(:, 4)});
set(gca, 'Fontsize', 18, 'xtick', [1 2 3], 'xticklabel', {'Iris setosa', 'Iris virginica', 'Iris versicolor'})
ylabel('Sepal width (SW)');

subplot(224)
axis([0, 4]);
boxplot({fisher_setosa(:, 5), fisher_virginica(:, 5), fisher_versicolor(:, 5)});
set(gca, 'Fontsize', 18, 'xtick', [1 2 3], 'xticklabel', {'Iris setosa', 'Iris virginica', 'Iris versicolor'})
ylabel('Sepal length (SL)');

% Once again, the trick to set the main title.
ha = axes('Position', [0 0 1 1], 'Xlim', [0 1], 'Ylim', [0 1], 'Box', 'off', 'Visible', 'off', 'Units', 'normalized', 'clipping', 'off');
text(0.5, 1,'\bf Fisher''s Iris','HorizontalAlignment','center','VerticalAlignment', 'top', 'Fontsize', 19);

% checking histograms for Setosa, Virginica and Versicolor
% petal width (PW), petal length (PL), sepal width (SW),
% and sepal length (SL).

figure();

%% Petal width (PW):
subplot(221);
hold on;
hist(fisher_setosa(:, 2), 'b');
hist(fisher_virginica(:, 2), 'r');
hist(fisher_versicolor(:, 2), 'g');
set(gca, 'Fontsize', 18);
legend({'Setosa', 'Virginica', 'Versicolor'})
legend('boxoff')
xlabel('Petal width (PW)');
hold off;

%% Petal length (PL):
subplot(222);
hold on;
hist(fisher_setosa(:, 3), 'b');
hist(fisher_virginica(:, 3), 'r');
hist(fisher_versicolor(:, 3), 'g');
set(gca, 'Fontsize', 18);
xlabel('Petal length (PL)');
hold off;

%% Sepal width (SW):
subplot(223);
hold on;
hist(fisher_setosa(:, 4), 'b');
hist(fisher_virginica(:, 4), 'r');
hist(fisher_versicolor(:, 4), 'g');
set(gca, 'Fontsize', 18);
xlabel('Sepal width (SW)');
hold off;

%% Sepal length (SL):
subplot(224);
hold on;
hist(fisher_setosa(:, 5), 'b');
hist(fisher_virginica(:, 5), 'r');
hist(fisher_versicolor(:, 5), 'g');
set(gca, 'Fontsize', 18);
xlabel('Sepal length (PL)');
hold off;

ha = axes('Position',[0 0 1 1],'Xlim',[0 1],'Ylim',[0 1],'Box','off','Visible','off','Units','normalized', 'clipping' , 'off');
text(0.5, 1,'\bf Fisher''s Iris.','HorizontalAlignment','center','VerticalAlignment', 'top', 'Fontsize', 19);

% Let's use the function histfit(), to generate histograms with the
% distribution fit of Setosa's petal width (PW), petal length (PL),
% sepal width (SW), and sepal length (SL).
% On Octave, histfit() is in the statistics package.
figure();

subplot(221)
histfit(fisher_setosa(:, 2));
set(gca,'Fontsize', 18);
xlabel('Petal width (PW)');

subplot(222)
histfit(fisher_setosa(:, 3));
set(gca,'Fontsize', 18);
xlabel('Petal length (PL)');

subplot(223)
histfit(fisher_setosa(:, 4));
set(gca,'Fontsize', 18);
xlabel('Sepal width (SW)');

subplot(224)
histfit(fisher_setosa(:, 5));
set(gca,'Fontsize', 18);
xlabel('Sepal length (SL)');

% Again, the trick to set the main title.
ha = axes('Position', [0 0 1 1], 'Xlim', [0 1], 'Ylim', [0 1], 'Box', 'off', 'Visible', 'off', 'Units', 'normalized', 'clipping', 'off');
text(0.5, 1, '\bf Fisher''s Iris. Type: Setosa', 'HorizontalAlignment', 'center', 'VerticalAlignment', 'top', 'Fontsize', 19);

% Now, back to the presentation!
