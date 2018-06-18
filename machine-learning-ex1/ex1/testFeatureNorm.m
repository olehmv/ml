X=[1 2 3;2 5 6; 4 8 9];
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));
disp(sigma);
rowSize=size(X,1);
columnSize=size(X,2)
  for r=1:rowSize
  
     for f=1:columnSize  
  
        mu(f)=X(r,f)-mean(X(:,f))
                
        sigma(f)=std(X(:,f))
        
        normalized=mu(f)/sigma(f)
        
        X_norm(r,f)=normalized;
     end

   end

  X 
  X_norm