% 提取原图 MSRCR 引导滤波 本文算法处理的信息熵 并保存在excel表格
clc
clear
letter={'1','2','3','4','5'};
for j=1:size(letter,2),
    Y{j}=imread(['G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\原图\',letter{j},'.', 'jpg']);%读入原图
    M{j}=imread(['G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\MSRCR\',letter{j},'.', 'jpg']);%读入MSRCR处理后的图
    G{j}=imread(['G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\引导滤波\',letter{j},'.', 'jpg']);%读入引导滤波处理后的图
    B{j}=imread(['G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\本文算法\',letter{j},'.', 'jpg']);%读入本文算法处理后的图
    result(j,1)=Wpsnr(M{j},Y{j});
    result(j,2)=Wpsnr(G{j},Y{j});
    result(j,3)=Wpsnr(B{j},Y{j});
end
 xlswrite('G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\论文中用到的质量评价标准程序\WPSNR.xls',result,'sheet1');

