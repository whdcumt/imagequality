% 提取原图 MSRCR 引导滤波 本文算法处理的信息熵 并保存在excel表格
clc
clear
letter={'1','2','3','4','5'};
for j=1:size(letter,2),
    Y{j}=imread(['F:\论文\图片\fattal主页\buildings_nishino\',letter{j},'.', 'png']);%读入原图
    M{j}=imread(['F:\论文\图片\fattal主页\buildings_output\',letter{j},'.', 'png']);%读入MSRCR处理后的图
    H{j}=imread(['F:\论文\图片\fattal主页\buildings_output_eaw\',letter{j},'.', 'png']);%读入MSRCR处理后的图
    G{j}=imread(['F:\论文\图片\fattal主页\buildings_output_eaw\',letter{j},'.', 'png']);%读入引导滤波处理后的图
    B{j}=imread(['F:\论文\图片\fattal主页\buildings_output_eaw\',letter{j},'.', 'png']);%读入本文算法处理后的图
    xinxishang(j,1) = shannon(Y{j});   %原图保存在第一列
    xinxishang(j,2) = shannon(M{j});
    xinxishang(j,3) = shannon(G{j});
    xinxishang(j,4) = shannon(B{j});
    xinxishang(j,5) = shannon(H{j});
end
 xlswrite('F:\论文\图片\fattal主页\信息熵1.xlsx',xinxishang,'sheet1');

