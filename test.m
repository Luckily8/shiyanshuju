%% req3
A = [2 0 0; 0 2 0; 0 3 1];
C = [1 1 1];

% 构造可观性矩阵
Ob = [C; C*A; C*A^2];

% 计算可观性矩阵的秩
Q = rank(Ob);

disp('可观性矩阵 Ob =');
disp(Ob);
disp(['秩 Q = ', num2str(Q)]);

if Q == size(A,1)
    disp('该系统是可观的');
else
    disp('该系统不可观');
end