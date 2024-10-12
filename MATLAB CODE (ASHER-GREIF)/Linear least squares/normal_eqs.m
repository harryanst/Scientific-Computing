clear;
clc;

% A,b given from the problem
A = [1 0 1;2 3 5;5 3 -2;3 5 4;-1 6 3];
b = [4 -2 5 -2 1]';

% Calculating Gram matrix B = A'A and vector y=A'b
B = A'*A;
y = A'*b;
x = B\y                    % Solving Bx=y 
r = b - A*x                % Calculating residual
A_pseudoinv = inv(B)*A'    % Calculating the pseudoinverse of A
