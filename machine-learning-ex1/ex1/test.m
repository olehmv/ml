
theta=[0;0;0];
X=[1 2 3;1 5 6; 1 8 9];
y=[ 10;20;30];
h=theta'*X;
m = length(y);

thetaSize=size(theta);
    rowSize=m;
   h=theta'*X;
    for i=1:rowSize     
     for j =1:thetaSize
        theta(j) - 0.1 * (1/m) * sum(h-y)*X(i:i,j)
      theta=theta(j) - 1 * (1/m) * sum(h-y).*X(i:i,j);
      end
    end

    
    rowSize=size(X,1);
columnSize=size(X,2);
  for r=1:rowSize
  
     for f=1:columnSize  
  
        feature=X(r,f);
  
        mu(f)=mean(X(:,f));
                
        sigma(f)=std(X(:,f))+1;
        
        normalized=mu(f)-feature/sigma(f);
        
        X_norm(r,f)=normalized;
     end

 end
 
 
 
   thetaSize=length(theta);
    rowSize=size(X,1);
    columnSize=size(X,2);
    h=X*theta;
    T =zeros(columnSize,1)
    for i=1:rowSize
      for j =1:columnSize
      theta(j)= theta(j) - alpha * (1/m) * sum(h-y).*X(i:i,j);
    end
  end
  
  
  H = X * theta;
	T = zeros(n , 1);
	for i = 1 : m,
		T = T + (H(i) - y(i)) * X(i,:)';	
	end
	
	theta = theta - (alpha * T) / m;