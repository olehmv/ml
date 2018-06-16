function J = costFunctionExample
  disp('zero cost functin example');
  X=[1 1;1 2;1 3];
  y=[1;2;3];
  theta=[0;1];
  % X is the "desing matrix" contaning our training examples.
  % y is the class labels
  disp('data(feathers) - X');
  disp(X);
  disp('labels - y');
  disp(y);
  disp('parameters(q0, q1) - theta ');
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
  answer = 1/(2*m) * sum(sqeErrors);
  disp(answer)
  disp('sanity check predictions hq(x(i)) - labels(y) = ((1-1)^2+(2-2)^2+(3-3)^2) / (2*m)');
  sanityCheck=((predictions - y).^2)/(2*m)
  disp(sanityCheck);
  endfunction