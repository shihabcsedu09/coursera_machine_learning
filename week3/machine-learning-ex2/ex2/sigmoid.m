  function g = sigmoid(z)
  %SIGMOID Compute sigmoid function
  %   g = SIGMOID(z) computes the sigmoid of z.

  % You need to return the following variables correctly
  g = zeros(size(z));

  for rowIter  = 1:size(z,1)
     for colIter = 1:size(z,2)
         numerator = 1 ;
         denominator = 1 + exp( -z(rowIter,colIter) ) ;
         g(rowIter,colIter) = numerator / denominator ;
     end
  end

  end
