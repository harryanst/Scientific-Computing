function x = ainvb(A,b)
% συνάρτηση x = ainvb(A,b)
% Λύνει την Ax = b

[p,LU] = plu(A);
y = forsub(LU,b,p);
x = backsub(LU,y);
end


































