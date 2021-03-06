function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

disp(J_history)

for iter = 1:num_iters

    error = (X * theta) - y;
    constant_value = ( alpha /m );
    theta = theta - constant_value * sum(error.* X);

    fprintf('Theta in these Iteration \n');
    fprintf('%f\n', theta);

    J_history(iter) = computeCost(X, y, theta);

    fprintf('Cost in these Iteration \n');
    fprintf('%f\n', J_history(iter));

end

end
