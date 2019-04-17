function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
% 不能以以下的方式写，因为C和sigma返回的是一个标量
% 如果这样初始化后C和sigma就变成了一个矢量了
% C = [0.01 0.03 0.1 0.3 1 3 10 30];
% sigma = [0.01 0.03 0.1 0.3 1 3 10 30];
% error = 10;
C = 1;
sigma = 0.3;
error=10;
para=[0.01 0.03 0.1 0.3 1 3 10 30];
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

for i = 1:size(para,2)
    c_temp = para(:,i);
    for j = 1:size(para,2)
        sig_temp = para(:,j);
        model = svmTrain(X, y, c_temp, @(x1, x2) gaussianKernel(x1, x2, sig_temp));
        predictions = svmPredict(model, Xval);
        err_temp = mean(double(predictions ~= yval));
        if  err_temp < error
            error = err_temp;
            C = c_temp;
           sigma = sig_temp;
        end
    end
end

% for i=1:size(para,2)
%     c_temp=para(:,i);
%     for j=1:size(para,2)
%       sig_temp=para(:,j);
%       model= svmTrain(X, y, c_temp, @(x1, x2) gaussianKernel(x1, x2, sig_temp));
%       predictions=  svmPredict(model, Xval);%列向量
%      err_temp= mean(double(predictions ~= yval));
%       if  err_temp<error
%         error=err_temp;
%         c=c_temp;
%         sigma=sig_temp;
%        end;
%      end;
%  end;





% =========================================================================

end
