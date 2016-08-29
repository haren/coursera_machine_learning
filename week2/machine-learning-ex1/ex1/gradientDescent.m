function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta.
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    % compute heuristic for each x
    h = X * theta;

    % compute errors for each x
    errors = (h - y) .* X;

    % subtract theta, sum(errors) needs to be transposed, equivalent to:
    % theta(1) = theta(1) - ((alpha * 1/m) * sum(errors)(1));
    % theta(2) = theta(2) - ((alpha * 1/m) * sum(errors)(2));
    theta = theta - (alpha / m) * sum(errors)';

    % ============================================================

    % Save the cost J in every iteration
    J_history(iter) = computeCost(X, y, theta);

end

end
