clear;clc
load data_water_quality.mat
[n,m] = size(X);
Position=[2,3,4];
Type=[2,1,3];
for i = 1 : size(Position,2)  %这里需要对这些列分别处理，因此我们需要知道一共要处理的次数，即循环的次数
        X(:,Position(i)) = Positivization(X(:,Position(i)),Type(i),Position(i));
end
disp('正向化后的矩阵 X =  ')
disp(X)

Z = X ./ repmat(sum(X.*X) .^ 0.5, n, 1);
disp('标准化矩阵 Z = ')
disp(Z)

D_P = sum([(Z - repmat(max(Z),n,1)) .^ 2 ],2) .^ 0.5;   % D+ 与最大值的距离向量
D_N = sum([(Z - repmat(min(Z),n,1)) .^ 2 ],2) .^ 0.5;   % D- 与最小值的距离向量
S = D_N ./ (D_P+D_N);    % 未归一化的得分
disp('最后的得分为：')
stand_S = S / sum(S);
[sorted_S,index] = sort(stand_S ,'descend');

