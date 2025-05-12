% 对比前例，下面是对图片中两个系统的状态可控性判别MATLAB代码

%% 系统1
A1 = [-2 2 -1; 0 -2 0; 1 -4 0];
B1 = [0; 0; 1];

% 可控性矩阵
Co1 = ctrb(A1, B1);
rank_Co1 = rank(Co1);

if rank_Co1 == size(A1,1)
    disp('系统1是可控的');
else
    disp('系统1不可控');
end

%% 系统2
A2 = [1 1 0; 0 1 0; 0 1 1];
B2 = [0 0; 0 1; 1 0];

% 可控性矩阵
Co2 = ctrb(A2, B2);
rank_Co2 = rank(Co2);

if rank_Co2 == size(A2,1)
    disp('系统2是可控的');
else
    disp('系统2不可控');
end

% 可选：输出可控性矩阵秩
disp(['系统1可控性秩: ', num2str(rank_Co1)]);
disp(['系统2可控性秩: ', num2str(rank_Co2)]);