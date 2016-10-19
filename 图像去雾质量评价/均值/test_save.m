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
    junzhi(j,1) = mean2(Y{j});   %原图保存在第一列
    junzhi(j,2) = mean2(M{j});
    junzhi(j,3) = mean2(H{j});
    junzhi(j,4) = mean2(G{j});
    junzhi(j,5) = mean2(B{j});
 
    biaozhuncha(j,1) = std2(Y{j});   %原图保存在第一列
    biaozhuncha(j,2) = std2(M{j});
    biaozhuncha(j,3) = std2(H{j});
    biaozhuncha(j,4) = std2(G{j});
    biaozhuncha(j,5) = std2(B{j});

    fangcha(j,1) = std2(Y{j})^2;   %原图保存在第一列
    fangcha(j,2) = std2(M{j})^2;
    fangcha(j,3) = std2(H{j})^2;
    fangcha(j,4) = std2(G{j})^2;
    fangcha(j,5) = std2(B{j})^2;

end
 xlswrite('G:\论文往外投稿相关\准备翻译成英文的边缘去雾\图片\原图\好的对比结果\原图\均值.xls',junzhi,'sheet1');
 xlswrite('G:\论文往外投稿相关\准备翻译成英文的边缘去雾\图片\原图\好的对比结果\原图\标准差.xls',biaozhuncha,'sheet1');
 xlswrite('G:\论文往外投稿相关\准备翻译成英文的边缘去雾\图片\原图\好的对比结果\原图\方差.xls',fangcha,'sheet1');

