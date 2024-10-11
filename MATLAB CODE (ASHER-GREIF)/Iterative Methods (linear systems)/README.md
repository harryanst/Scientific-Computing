>> A = [7 3 1; -3 10 2; 1 7 -15];  <br>
b = [3; 4; 2];                     <br>
tol = 1e-10;                       <br>
max_iter = 30;                     <br>

<br>

>> x = jacobi_iteration_mvp(A, b, tol, max_iter)    

Converged after 32 iterations.

x =

    0.2232
    0.4488
    0.0910



>> y = gauss_seidel_iteration_mvp(A,b,tol,max_iter)

Converged after 19 iterations.

y =

    0.2232
    0.4488
    0.0910


%% Παρατηρώ πως η Gauss-Seidel συγκλίνει ΓΡΗΓΟΡΟΤΕΡΑ σε σχέση με την Jacobi. <br>
%% Γνωρίζω από τη θεωρία ωστόσο πως με την Gauss-Seidel η σάρωση είναι πιο δύσκολο να εκτελεστεί παράλληλα(δες σελ 290).
