
%% 系统1（数值分析）
A1 = [0 1 0; 0 0 1; -6 -11 -6];
B1 = [0; 0; 1];
C1 = [1 0 0];

% 可控性
Co1 = [B1 A1*B1 A1^2*B1];
rank_Co1 = rank(Co1);

% 可观性
Ob1 = [C1; C1*A1; C1*A1^2];
rank_Ob1 = rank(Ob1);

% 输出可控性
% 构造输出可控性矩阵 Wo = [B1 A1*B1 A1^2*B1]
% 输出可控性秩为 rank(C1*Wo)
Wo1 = [B1 A1*B1 A1^2*B1];
rank_output_controllable1 = rank(C1*Wo1);

disp('系统1：');
disp(['可控性秩 = ', num2str(rank_Co1)]);
disp(['可观性秩 = ', num2str(rank_Ob1)]);
disp(['输出可控性秩 = ', num2str(rank_output_controllable1)]);

%% 系统2（符号分析）
syms a b c d
A2 = diag([-a, -b, -c, -d]);
B2 = [0; 0; 1; 1];
C2 = [1 0 0 0];

% 可控性（手动矩阵）
q1 = B2;
q2 = A2*B2;
q3 = A2^2*B2;
q4 = A2^3*B2;
S2 = [q1 q2 q3 q4];

disp('系统2可控性矩阵 S2 =');
disp(S2);
disp('S2 的 rref（行最简形）：');
disp(rref(S2));

% 可观性
O2 = [C2; C2*A2; C2*A2^2; C2*A2^3];
disp('系统2可观性矩阵 O2 =');
disp(O2);
disp('O2 的 rref（行最简形）：');
disp(rref(O2));

% 输出可控性
Wo2 = [B2 A2*B2 A2^2*B2 A2^3*B2];
disp('系统2输出可控性矩阵 C2*Wo2 =');
disp(C2*Wo2);

% 若需要符号秩，可人工判断 rref 的非零行数