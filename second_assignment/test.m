data = load('ex2data1.txt');
X = data(:, [1,2]);
y = data(:, 3);

% Find indices of positive and negative examples
pos = find(y == 1);
neg = find(y == 0);

fprintf("%0.0f\n", pos)
% Plot examples
figure;
plot(X(pos, 1), X(pos, 2), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
hold on;
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);

% Plot does not seem to work when script is run from command line because
% as soon program ends, plot disappear. To avoid that we must insert pause
% so that program halts till feedback from user is received
pause;
p = linspace(0,10,10)
l = linspace(0, 10, 5.2)
plot(p)
