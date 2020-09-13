data = load('ex1data1.txt');

m = length(data);
X = [ones(m,1), data(:, 1)];
y = data(:,2);

theta = [0; 0];
alpha = 0.01;
iteration = 1500;

for iter = 1:iteration
	temp1 = theta(1) - (alpha/m)*(sum(X*theta - y));
	temp2 = theta(2) - (alpha/m)*(sum((X*theta - y) .* X(:,2)));
	theta = [temp1; temp2];

end

fprintf('Final theta value is: %f', theta);
