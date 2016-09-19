%%
%% COURSE_DAY3.M
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
%%% PART 5: SCRIPTS AND FUNCTIONS %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% 5.2 Comments

% This line isn't executed by the interpreter.
% Or this one.

%%% 5.3 Comment block

%{
All these lines aren't interpreted:
- Not this.
- Not this, too.
- Or this one.
- Not even this one.
%}

%%% 5.4 Functions

%% function quadraticdelta().
function delta = quadraticdelta(vala, valb, valc)
    %{
    QUADRATICDELTA receives the coefficients A, B and C
    (vala, valb, and valc) of a quadratic equation and
    returns its discriminant (delta).
    %}

    delta = valb^2-4*vala*valc;
end

%% function cubicdelta().
function delta = cubicdelta(vala, valb, valc, vald)
    %{
    CUBICDELTA receives the coefficients A, B, C and D
    (vala, valb, valc, and vald) of a cubic equation and
    returns its discriminant (delta).
    %}

    delta = 18*vala*valb*valc*vald ...
    -4*valb^3*vald+valb^2*valc^2 ...
    -4*vala*valc^3-27*vala^2*vald^2;
end

%% function coneinfo().
function [lat_area, surf_area, vol] = coneinfo(radius, height)
    %{
    CONEINFO receives radius and height of a cone and
    returns its lateral area (lat_area), surface area
    (surf_area), and volume (vol).
    %}

    lat_area = pi*radius*sqrt(height^2+radius^2);
    disp(’The lateral area of this cone is ’); disp(lat_area);
    surf_area = pi*radius*(radius+sqrt(altura^2+radius^2));
    disp(’The surface area of this cone is ’); disp(surf_area);
    vol = pi*radius^2*(height/3);
    disp(’The volume of this cone is ’); disp(vol);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% PART 6: FLOW CONTROL %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% 6.1 Comparative operators

a = 2^2
b = 3^2
a == b
a != b  % on MATLAB, a ~= b
a < 4
sqrt(9) <= b
a > 10.^b
factorial(a) >= b

%%% 6.2 Logical operators

a = 2^2; b = 3^2;
(a+5 == b) && (~a != b)
xor(a.^2 == b.^2, 3 > 2)
~(~a || ~b)

%%% 6.3 Conditional structures 

%% if:
low_limit = 18;
high_limit = 80;
age = input('Type your age: ');
if age < low_limit
    disp('Do not drink kid!');
elseif age > high_limit
    disp('Do not drive sir!');
else
    disp('You can do everything! Except for drinking and driving!')
end

% One more example:
function intervaltest_if(num)
    if num < 1 && num > -1
        if num < 0.5 && num > -0.5
            if num < 0.25 && num > -0.25
                disp('Number is between -1/4 and 1/4');
            else
                disp('Number is between -1/2 and 1/2');
            end
        else
            disp('Number is between -1 and 1');
        end
    else
        disp('Number is outside the interval [-1, 1]!')
    end
end

%% switch:
age = input('Type your age: ');
switch idade
    case num2cell([0:17])
        disp('Do not drink kid!');
    case num2cell([80:100])
        disp('Do not drive sir!');
    otherwise
        disp('You can do everything! Except for drinking and driving!')
end

% One more example:
function intervaltest_switch(num)
    switch num
        case(num2cell([-25:25]))
            disp('Number is between -25 and 25')
        case(num2cell([-50:50]))
            disp('Number is between -50 and 50')
        case(num2cell([-100:100]))
            disp('Number is between -100 and 100')
        case(300)
            disp('THIS IS SPARTAAAAAAA')
        otherwise
            disp('Number outside the interval [-100, 100]!')
    end
end

%% 6.4 Repetition structures (loops)

%% for:
fibo = ones(1, 30);
for term = 3:numel(fibo)
    fibo(term) = fibo(term-1) + fibo(term-2);
end

%% while:
term = 100;
sum = 0;
iter = 1;
while (iter != term)
    sum = sum + (1/(iter.^2))  % equivalent to (pi^2)/6
    iter++
end

%% GNU Octave users, search also the do-until structure:
%https://www.gnu.org/software/octave/doc/v4.0.1/The-do_002duntil-Statement.html

%% Please answer the evaluation form. Thank you very much!
% http://goo.gl/forms/2kCp1jLbRI
