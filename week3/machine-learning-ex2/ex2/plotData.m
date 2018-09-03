function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% Get positive and negative examples indices
positive_examples = find(y == 1);
negative_examples = find(y == 0);


plot(X(positive_examples,1), X(positive_examples,2), '+', 'LineWidth', 2, 'MarkerSize', 6);
plot(X(negative_examples,1), X(negative_examples,2), 'o', 'MarkerFaceColor', 'yellow', 'MarkerSize', 6);



% =========================================================================



hold off;

end
