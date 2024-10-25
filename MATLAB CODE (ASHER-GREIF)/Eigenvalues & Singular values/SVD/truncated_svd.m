colormap('gray')
load clown.mat;
figure(1)
image(X);

%% truncated SVD of rank 20
[U,S,V] = svd(X);
figure(2)
r = 20;
colormap('gray')
image(U(:,1:r)*S(1:r,1:r)*V(:,1:r)');