clear;
clc;

A = [1 0;1 1;1 2]
b = [0.1 0.9 2.0]'

% qr factorization
[Q, T] = qr(A)

% necessary data for later on
num_columns = size(T,2);
num_rows = size(Q,1);

% extracting matrix R
R = T(1:num_columns, 1:num_columns)

% Multiplying both matrix A and vector b with A'
term1 = Q'*A;
term2 = Q'*b;

% Calculating c and d
c = term2(1:num_columns)
d = term2(num_rows)

% Solving Rx=c
x = R\c 
r = b - A*x;

% Norm of residual must be same as d
disp('Norm of residual:');
n = norm(r,2)

