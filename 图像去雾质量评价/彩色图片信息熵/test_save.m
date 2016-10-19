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
    xinxishang(j,1) = shannon(Y{j});   %原图保存在第一列
    xinxishang(j,2) = shannon(M{j});
    xinxishang(j,3) = shannon(G{j});
    xinxishang(j,4) = shannon(B{j});
    xinxishang(j,5) = shannon(H{j});
end
 xlswrite('G:\论文往外投稿相关\准备翻译成英文的边缘去雾\图片\原图\好的对比结果\原图\信息熵1.xls',xinxishang,'sheet1');

