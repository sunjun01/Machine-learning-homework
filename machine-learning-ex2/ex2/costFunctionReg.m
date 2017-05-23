function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

h = sigmoid(X * theta);
tmp1 = -y .* log(h) - (1 - y) .* log(1 - h);

J_Count = size(theta, 1)
thetaj = theta(2:J_Count, :)
J = sum(tmp1) ./ m + lambda / (2 * m) * sum(thetaj .^2)

X0 = X(:, 1);
grad0 = sum((h - y) .* X0) ./ m;

grad = grad0;

for J_Index = 2:J_Count
    Xi = X(:, J_Index);
    gradi = sum((h - y) .* Xi) ./ m + lambda / m * theta(J_Index);
    grad = [grad, gradi];
end



% =============================================================

end
