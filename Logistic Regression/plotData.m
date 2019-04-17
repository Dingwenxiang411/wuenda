function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
% 分别找出数据中等于0和等于1的元素
pos = find(y==1);
neg = find(y==0);
plot(X(pos, 1), X(pos, 2), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
% k表示黑色轮廓，+表示加号，o表示圆圈，LineStyle表示线型，LineWidth表示线宽，
% Marker表示点型，MarkerSize表示点的大小，MarkerFaceColor表示点的内部颜色





% =========================================================================



hold off;

end
