% 判断题目所给系统的可控性与可观性

A = [3 0 2 0;
     0 1 0 1;
     0 1 2 1;
     0 1 0 1];
B = [0 0; 0 1; 1 0; 1 0];
C = [1 0 1 0];
 
% 可控性矩阵 S（n=4, p=2，S为4x8）
S = [B, A*B, A^2*B, A^3*B];

% R = S * S'
R = S * S';
Q_c = rank(R);

disp(['可控性判别:']);
disp(['S =']); disp(S);
disp(['R = S * S'' =']); disp(R);
disp(['系统可控性秩 Q_c = ', num2str(Q_c)]);
if Q_c == size(A,1)
    disp('系统可控');
else
    disp('系统不可控');
end

% 可观性矩阵 O（O为4x4）
O = [C; C*A; C*A^2; C*A^3];

Q_o = rank(O);

disp([' ']);
disp(['可观性判别:']);
disp(['O =']); disp(O);
disp(['系统可观性秩 Q_o = ', num2str(Q_o)]);
if Q_o == size(A,1)
    disp('系统可观');
else
    disp('系统不可观');
end