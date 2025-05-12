%% req4
% 一题系统1
A1 = [0 1 0; 0 0 1; -6 -11 -6];
disp('一题系统1特征值:');
disp(eig(A1));

% 二题系统1
A2 = [0 1 0; 0 0 1; -6 -11 -6];  % 二题系统1的A矩阵       
disp('二题系统1的特征值:');
disp(eig(A2)); 

% 二题系统2（符号分析）
syms a b c d real
A3 = diag([-a, -b, -c, -d]);
disp('二题系统2特征值:');
disp(eig(A3)); % 输出为[-a; -b; -c; -d]

% 三题系统1
A4 = [2 0 0; 0 2 0; 0 3 1];
disp('三题系统1特征值:');
disp(eig(A4));

% 三题系统2
A5 = [1 3 2; 0 4 2; 0 0 1];
disp('三题系统2特征值:');
disp(eig(A5));

% 稳定性判断
mat_list = {A1, A2, A4, A5}; % 只包含数值型矩阵
for i = 1:length(mat_list)
    eigs = eig(mat_list{i});
    if all(real(eigs) < 0)
        fprintf('系统%d稳定。\n', i);
    else
        fprintf('系统%d不稳定。\n', i);
    end
end

% 对二题系统2符号矩阵A3单独判断
disp('二题系统2为符号矩阵，其特征值为：');
disp(eig(A3));
disp('只有当 a、b、c、d 全部为正数时，二题系统2稳定。');