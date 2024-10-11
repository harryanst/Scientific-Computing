function [p,n] = bisect(func, a, b, fa, fb, atol)
%
% Αν υποθέσουμε ότι fa = func(a), fb = func(b) και fa*fb < 0,
% υπάρχει μια τιμή root στο (a,b) τέτοια ώστε func(root) = 0.
% Η συνάρτηση επιστρέφει μέσω του p μια τιμή τέτοια ώστε 
% |p - root| < atol
% και μέσω του n το πλήθος των απαιτούμενων επαναλήψεων.
%
% έλεγχος εισόδου
if (a >= b) | (fa*fb >= 0) | (atol <=0)
    disp('Η είσοδος δεν είναι σωστή: τερματισμός');
    p = NaN; n = NaN;
    return
end


n = ceil( log2(b-a) - log2(2*atol));
for k=1:n
    p = (a+b)/2;
    fp = feval(func,p);
    if fa* fp < 0
        b = p;
        fb = fp;
    else
        a = p;
        fa = fp;
    end

end
p = (a+b)/2;
