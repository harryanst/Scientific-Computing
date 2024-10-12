clear;
clc;

A = [1 0 1;2 3 5;5 3 -2;3 5 4;-1 6 3];
b = [4 -2 5 -2 1]';
B = A'*A;
y = A'*b;
x = B\y
r = b - A*x
A_pseudoinv = inv(B)*A'