function [x, iter] = jacobi_iteration_mvp(A, b, tol, max_iter)
   
    % vector that stores the diagonal of A
    d = diag(A);
    
    % Initial guess (zero vector)
    x = zeros(size(b));
    
    % Iterate for a maximum number of iterations
    for iter = 1:max_iter
        % Compute the residual r = b - A*x using matrix-vector product
        r = b - mvp(A, x); 
        
        % Update the solution x using Jacobi formula: x = x + r./d
        x_new = x + r ./ d;
        
        % Check for convergence (if the norm of the residual is within tolerance)
        if norm(x_new - x, inf) < tol
            disp(['Converged after ', num2str(iter), ' iterations.']);
            x = x_new;
            return;
        end
        
        % Update the previous solution for the next iteration
        x = x_new;
    end
    
    % If it reaches here, maximum iterations were reached
    disp('Maximum iterations reached without convergence.');
end

% Define the MVP (matrix-vector product) function
function result = mvp(A, x)
    result = A * x;
end
