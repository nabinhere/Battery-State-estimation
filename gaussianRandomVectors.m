ybar = [1; 2]; covar = [2, 0.75; 0.75, 1];
A = chol(covar,'lower');
figure(1);
for k = 1:1000,
x = randn([2, 1]);
y = ybar + A*x;
plot(y(1),y(2),'.'); hold on
title('for symmetric definite')
end
hold off

ybar = [1; 2]; covar = [2, 0.75; 0.75, 1];
[L,D] = ldl(covar);
figure(2);
for k = 1:1000,
x = randn([2, 1]);
y = ybar + (L*sqrt(D))*x;
plot(y(1),y(2),'.'); hold on
title('for symmetric semi-definite')
end