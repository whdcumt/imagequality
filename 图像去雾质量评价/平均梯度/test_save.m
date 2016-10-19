% 提取原图 MSRCR 引导滤波 本文算法处理的信息熵 并保存在excel表格
clc
clear
letter={'1','2','3','4','5'};
for j=1:size(letter,2),
    Y{j}=imread(['G:\论文往外投稿相关\准备翻译成英文的边缘去雾\图片\原图\好的对比结果\原图\原图\',letter{j},'.', 'jpg']);%读入原图
    M{j}=imread(['G:\论文往外投稿相关\准备翻译成英文的边缘去雾\图片\原图\好的对比结果\原图\MSR\本文用到的图\',letter{j},'.', 'jpg']);%读入MSRCR处理后的图
    H{j}=imread(['G:\论文往外投稿相关\准备翻译成英文的边缘去雾\图片\原图\好的对比结果\原图\MSR\本文用到的图\NASA\',letter{j},'.', 'jpg']);%读入MSRCR处理后的图
    G{j}=imread(['G:\论文往外投稿相关\准备翻译成英文的边缘去雾\图片\原图\好的对比结果\原图\He\本文用到的图\',letter{j},'.', 'jpg']);%读入引导滤波处理后的图
    B{j}=imread(['G:\论文往外投稿相关\准备翻译成英文的边缘去雾\图片\原图\好的对比结果\原图\本文\本文用到的图\',letter{j},'.', 'jpg']);%读入本文算法处理后的图
    outval(j,1) = avg_gradient(Y{j});   %原图保存在第一列
    outval(j,2) = avg_gradient(M{j});
    outval(j,3) = avg_gradient(H{j});
    outval(j,4) = avg_gradient(G{j});
    outval(j,5) = avg_gradient(B{j});

end
 xlswrite('G:\论文往外投稿相关\准备翻译成英文的边缘去雾\图片\原图\好的对比结果\原图\平均梯度.xls',outval,'sheet1');

