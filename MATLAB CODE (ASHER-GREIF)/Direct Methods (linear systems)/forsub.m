function y = forsub(A,b,p)
% συνάρτηση y = forsub(A,b,p)
%
% Για μια μοναδιαία κάτω τριγωνική, μη ιδιάζουσα
% μήτρα Α διαστάσεων n επί n, ένα διάνυσμα b
% διάστασης n, και μια μετάθεση p, επιστρέφει το
% διάνυσμα y που αποτελεί λύση της Ay = Pb


n = length(b);

% μετάθεση του b σύμφωνα με την p
b = b(p);

% Initialize the solution vector y
y = zeros(n, 1);  % Ensure y is a column vector

% προς τα εμπρός αντικατάσταση
y(1) = b(1);
for k = 2:n
    y(k) = b(k) - A(k,1:k-1) * y(1:k-1);
end

end