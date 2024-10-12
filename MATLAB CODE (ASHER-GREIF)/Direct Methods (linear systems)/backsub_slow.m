function x = backsub_slow(A,b)
% συνάρτηση πίσω αντικατάστασης με χρήση διπλού for loop
% πιο αργή συγκριτικά με την διανθσματοποιημένη εκδοχή της -> backsub(A,b)
n = length(b);
for k = n:-1:1
    x(k) = b(k);
    for j = k+1:n 
        x(k) = x(k) - A(k,j)*x(j);
    end
    x(k) = x(k) / A(k,k);
end
end