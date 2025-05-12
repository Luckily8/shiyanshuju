%% 系统1
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

%% 系统2
% 判断系统的可控性与可观性

A = [1 3 2; 0 4 2; 0 0 1];
B = [0 1; 0 0; 1 0];
C = [1 0 0; 0 0 1];

% 可控性
Co = ctrb(A, B);
rank_Co = rank(Co);

% 可观性
Ob = obsv(A, C);
rank_Ob = rank(Ob);

disp(['可控性矩阵的秩 rank(Co) = ', num2str(rank_Co)]);
if rank_Co == size(A,1)
    disp('系统可控');
else
    disp('系统不可控');
end

disp(['可观性矩阵的秩 rank(Ob) = ', num2str(rank_Ob)]);
if rank_Ob == size(A,1)
    disp('系统可观');
else
    disp('系统不可观');
end