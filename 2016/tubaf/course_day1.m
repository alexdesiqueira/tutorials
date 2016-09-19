%%
%% COURSE_DAY1.M
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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% PART 1: BASIC COMMANDS %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% 1.3 disp()
disp('Hey Freiberg! Here we are!');

%%% 1.4 input()
your_name = input('Tell me your name, please: ', 's');
your_age = input('Now, tell me your age: ');

%%% 1.5 help()
help disp;
help input;

%%% 1.6 Basic operators
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

%%% 1.9 Trigonometric functions
sin(pi/6)+cos(0)
sind(90)+cosd(0)
sec(pi/4)*cot(pi/4)
secd(45)*cotd(90)
tan(csc(2*pi/3))
tand(csc(120))

%%% 1.10 Inverse trigonometric functions
asin(1/2)
asind(1/2)
sec(45)*cot(90)
secd(45)*cotd(90)
tan(csc(120))
tand(csc(120))

%%% 1.11 Hyperbolic trigonometric functions
sinh(pi/6)+cosh(pi/6)
tanh(2*pi)/csch(3*pi/2)
sech(coth(pi/4))

%%% 1.12 Inverse hyperbolic trigonometric functions
asinh(pi^3)
asech(pi/10)
acsch(pi/4)

%%% 1.13 Exponential and logarithm
exp(10)
log(e)
log2(64)
log10(1000)

%%% 1.14 Complex numbers
real(3+4i)
imag(3+4j)
conj(3+4i)
angle(3+4j)

%%% Exercise 1:
%% Verify Euler's identity:
e^(i*pi) + 1
%% or
exp(i*pi) + 1
%% Also verify that e^(i*pi) is equal to cos(pi)+i*sin(pi).

%%% Exercise 2:
%% Calculate the discriminant of the equation A*X^2+B*X+C = 0, where
%% A, B and C are given by the user.
coef_A = input('Type the value of A: ');
coef_B = input('Now, type the value of B: ');
coef_C = input('Finally, type the value of C: ');
delta = coef_B^2 - 4*coef_A*coef_C;
disp('The value of the discriminant is ');
disp(delta);

%%% Exercise 3:
%% Calculate the discriminant of the equation A*X^3+B*X^2+C*X+D = 0,
%% where A, B, C and D are given by the user. Use the equation below:
%% DISCRIMINANT = 18*A*B*C*D-4*B^3*D+B^2*C^2-4*A*C^3-27*A^2*D^2.

A = input('Type the value of A: ');
B = input('Now, type the value of B: ');
C = input('Now, type the value of C: ');
D = input('Finally, type the value of D: ');
delta = 18*A*B*C*D-4*B^3*D+B^2*C^2-4*A*C^3-27*A^2*D^2;
disp('The value of the discriminant is ');
disp(delta);

%% There's more about cubic functions on Wikipedia:
% https://en.wikipedia.org/wiki/Cubic_function

%%% Exercise 4:
%% The first three terms of the Maclaurin's series for sec(x) 
%% between -1 and 1 are: 1, (1/2)*x^2, and (5/24)*x^4.
%% Calculate the approximation for:
sec(-0.3)
sec(0.9)
%% Calculate also the approximation with four and five terms.
%% Fourth term: (61/720)*x^6; Fifth term: (277/8064)*x^8
%% More Maclaurin series at:
% http://mathworld.wolfram.com/MaclaurinSeries.html

%%% More interesting functions:
%% int2str(num): convert an integer into a string.
%% strcat(string1,string2): concatenate (glue) string1 and string2.
%% printf(string,vars): formatted output. The variables can be:
%% * integer, %i.
%% * real, %f.
%% * scientific notation, %e.
%% An example:
num1 = 3.1415
num2 = 3.1415
str1 = 'test';
printf('Integer: %i. Real: %f. This is a %s.\n', num1, num2, str1);
%% \n go to the next line.
%% We could use printf() on Exercises 2 and 3:
printf('The value of the discriminant is %f.', delta);

%% More about showing results in:
% http://en.wikibooks.org/wiki/Octave_Programming_Tutorial/Text_and_file_output

%% About scientific notation on Octave and numbers "close to zero":
%http://wiki.octave.org/FAQ#Why_is_this_floating_point_computation_wrong.3F
%% Some functions to improve these results:
% http://www.chemie.fu-berlin.de/chemnet/use/info/octave/octave_8.html
% http://www.gnu.org/software/octave/doc/interpreter/Utility-Functions.html
%% Use them wisely! Examples:
%% GOOD examples of using fix():
fix(e^(i*pi))
fix(sin(pi))
%% BAD examples of using fix():
fix(pi)
fix(e)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% PART 2: MATRICES AND VECTORS %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% 2.1 Vectors
vector_1 = [1 2 3];
vector_2 = [sin(pi) cos(pi) 0];
vector_3 = [2^3, 6i, e^pi];

%% Use parentheses to refer to an element of the vector.
vector_1(1)
vector_2(3)
vector_3(end)

%%% 2.2 Vectors by increment
vector_inc1 = [1:10];
vector_inc2 = [-pi:0.1:pi];
vector_inc3 = 10:-0.1:1;
vector_inc4 = e^-pi:0.1:e^pi;

%%% 2.3 linspace()
vector_lin1 = linspace(0,50,100);
vector_lin2 = linspace(-25,25,90);
vector_lin3 = linspace(-10,10,40);

%%% 2.4 logspace()
vector_log1 = logspace(0,50,100);
vector_log2 = logspace(0,15,10);
vector_log3 = logspace(pi,10,40);

%%% 2.5 transpose()
vector_1 = [1 2 3];
transpose(vector_1)
vector_2 = [sin(pi) cos(pi) 0];
transpose(vector_2)
vector_3 = [2^3, 6i, e^pi];
vector_3'

%%% 2.6 Matrices
matrix_1 = [1 2 3; 4 5 6];
matrix_2 = [sin(pi) 0 0; 0 cos(pi) 0; 0 0 tan(pi)];
matrix_3 = [2^3 sin(pi/3); 6i exp(10); e^pi tanh(10)];

%% To refer to an element of the matrix, use parentheses and commas.
matrix_1(1,2)
matrix_2(:,end)
matrix_3(2,:)
matrix_3(:,:)

%% Some tests.
matrix = [1 2 3; 4 5 6; 7 8 9; 10 11 12; 13 14 15];
matrix(1:3,3)
matrix(1:3,2:3)
matrix(1:3,2:end)

%% Defining matrices by increment:
matrix_test = [1:10; 10:-1:1]
%% Defining matrices using linspace():
matrix_test2 = [linspace(-pi,pi,5); linspace(-2*pi,2*pi,5)];

%%% 2.7 zeros()
mat_zero1 = zeros(2)
mat_zero2 = zeros(3)
mat_zero3 = zeros([3 2])
mat_zero4 = zeros(4,3)

%%% 2.8 ones()
mat_one1 = ones(2)
mat_one2 = ones(3)
mat_one3 = ones([3 2])
mat_one4 = ones(4,3)

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
mat_rand1 = rand(1,10)
mat_rand2 = rand(4,3)
mat_rand3 = rand('seed',1)
mat_rand4 = rand(3,2)

%% Integer numbers between 0 and 100:
round(rand(1)*100)

%%% 2.12 Operations

%% Addition and subtraction:
vec_A = [2*pi -factorial(3) e];
vec_B = [factorial(4) pi/2 cos(pi)];
vec_A+vec_B
vec_A-vec_B

%% Multiplication:
mat_C = [sin(pi/6) cos(pi/6); cos(pi/6) sin(pi/6)];
mat_D = [sin(pi/3) cos(pi/3); cos(pi/3) sin(pi/3)];
mat_C.*mat_D
mat_C*mat_D
vec_lin = [sin(pi/3) cos(pi/3) 0];
vec_col = [sin(pi/6); cos(pi/6); 0];
10.*vec_col
vec_lin*vec_col
vec_col*vec_lin

%% Division:
vec_E = [linspace(-1,-0.5,3); linspace(-0.5,0,3); linspace(0,0.5,3)];
vec_E./0.1
0.1./vec_E
mat_F = [1 2 3; 4 5 6; 7 8 9];
mat_F'/mat_F

%% Power:
vec_G = [exp(3); factorial(3); sin(pi/6)]
vec_G.^3
2.^vec_G
mat_H = [1 3; 5 7];
mat_H^2
e^mat_H

%%% 2.13 Advanced functions

%% Trace:
trace(mat_C)
trace(mat_H')

%% Determinant:
det(mat_D)
det(mat_F)
%% vander(): Vandermonde matrix.
%% More in:
% http://mathworld.wolfram.com/VandermondeMatrix.html
% http://www.mathworks.com/help/matlab/ref/vander.html
ent = 1:5;
mat_I = vander(ent);
det(mat_I)

%% Inverse matrix:
inv(mat_C)
inv(mat_D)
mat_J = [1 0 -3; 2 5 0; -2 8 -6];
inv(mat_J)

%% Eigenvalues and eigenvectors:
[avet, aval] = eig(mat_C)
aval = eig(mat_D)
[avet, aval] = eig(mat_I)

%% Linear systems:
A = [1 0; -2 3];
b = [3 -1]'
x = A\b
A*x
k = [-1 0 5]';
x2 = mat_J\k

