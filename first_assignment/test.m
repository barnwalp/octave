data = load('ex1data1.txt');

m = length(data);
X = [ones(m,1), data(:, 1)];
%disp(J);
y = data(:,2);
l = [1:1500];

plot(l, y);
%hold on;

theta = [0; 0];
alpha = 0.01;
iteration = 1500;
J = [zeros(iteration,1)];

for iter = 1:iteration
	temp1 = theta(1) - (alpha/m)*(sum(X*theta - y));
	temp2 = theta(2) - (alpha/m)*(sum((X*theta - y) .* X(:,2)));
	theta = [temp1; temp2];
	J(iter) = sum((X*theta - y) .^ 2) / (2*m);
end

fprintf('\nlength of J matrix is: %0.0f\n', length(J));
%disp(J);
plot(l, J);
fprintf('Final theta value is: %f', theta);
