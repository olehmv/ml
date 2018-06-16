function J = costFunctionJ(X, y, theta)
  % X is the "desing matrix" contaning our training examples.
  % y is the class labels
  disp('data(feathers) - X');
  disp(X);
  disp('labels - y');
  disp(y);
  disp('parameters - theta, q0, q1 ');
  disp(theta) ; 
  m = size(X,1); %number of training examples
  disp('number of training examples m - size(X,1)');
  disp(m);
  predictions = X*theta; % predictions of hypothesis on all m examples -> hq(x(i))
  disp('predictions of hypothesis on all m example hq(x)=q0x0+q1x1, X(x0-feather0,x1-feather1), theta(q0-parameter0,q1-parameter1), X*theta');
  disp(predictions);
  sqeErrors = (predictions - y).^2; % squared errors
  disp('squared errors (predictions - y).^2 - difference between predictions and lables(actual value y) squared');
  disp(sqeErrors);
  disp('cost function 1/(2*m) * sum(sqeErrors)');
  J = 1/(2*m) * sum(sqeErrors);
endfunction
