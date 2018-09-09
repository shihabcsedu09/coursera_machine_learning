function[J, grad] = costFunctionReg(theta, X, y, lambda)

m = length(y);

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));


h_theta = sigmoid(X * theta);


disp((theta(2 : length(theta))'));
disp(theta(2 : length(theta)));

cost_first_part = (1 / m) * ((-y' * log(h_theta)) - (1 - y)' * log(1 - h_theta));
cost_regularization_part = ((lambda / (2 * m)) * ((theta(2 : length(theta)))' * theta(2 : length(theta))));

J = cost_first_part + cost_regularization_part ;



theta(1) = 0;

gradient_descent_first_part = (1 / m) * (h_theta - y)' * X;
gradient_descent_second_part = lambda / m * theta'


grad = gradient_descent_first_part + gradient_descent_second_part

end
