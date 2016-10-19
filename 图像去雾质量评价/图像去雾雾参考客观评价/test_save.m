% 提取原图 MSRCR 引导滤波 本文算法处理的信息熵 并保存在excel表格
clc
clear
letter={'1','2','3','4','5'};
for j=1:size(letter,2),
    Y{j}=imread(['G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\原图\',letter{j},'.', 'jpg']);%读入原图
    M{j}=imread(['G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\MSRCR\',letter{j},'.', 'jpg']);%读入MSRCR处理后的图
    H{j}=imread(['G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\何凯明\',letter{j},'.', 'jpg']);%读入MSRCR处理后的图
    G{j}=imread(['G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\引导滤波\',letter{j},'.', 'jpg']);%读入引导滤波处理后的图
    B{j}=imread(['G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\本文算法\',letter{j},'.', 'jpg']);%读入本文算法处理后的图
    outval(j,1) = pingjia_me(double(Y{j})/255);   %原图保存在第一列  细节
    outval(j,2) = pingjia_me(double(M{j})/255);
    outval(j,3) = pingjia_me(double(G{j})/255);
    outval(j,4) = pingjia_me(double(B{j})/255);
    outval(j,5) = pingjia_me(double(H{j})/255);
    
    sediao1(j,1) = sediao(Y{j},Y{j});   %原图保存在第一列 色调
    sediao1(j,2) = sediao(Y{j},M{j});
    sediao1(j,3) = sediao(Y{j},G{j});
    sediao1(j,4) = sediao(Y{j},B{j});
    sediao1(j,5) = sediao(Y{j},H{j});
    
    jiegou(j,1) = ssim(Y{j},Y{j});   %原图保存在第一列 色调
    jiegou(j,2) = ssim(Y{j},M{j});
    jiegou(j,3) = ssim(Y{j},G{j});
    jiegou(j,4) = ssim(Y{j},B{j});
    jiegou(j,5) = ssim(Y{j},H{j});
    
    zonghe(j,1) = outval(j,1)*sediao1(j,1)*jiegou(j,1);   %原图保存在第一列 色调
    zonghe(j,2) = outval(j,2)*sediao1(j,2)*jiegou(j,2);
    zonghe(j,3) = outval(j,3)*sediao1(j,3)*jiegou(j,3);
    zonghe(j,4) = outval(j,4)*sediao1(j,4)*jiegou(j,4);
    zonghe(j,5) = outval(j,5)*sediao1(j,5)*jiegou(j,5);
end
 xlswrite('G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\论文中用到的质量评价标准程序\细节强度.xls',outval,'sheet1');
 xlswrite('G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\论文中用到的质量评价标准程序\色调.xls',sediao1,'sheet1');
 xlswrite('G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\论文中用到的质量评价标准程序\结构.xls',jiegou,'sheet1');
 xlswrite('G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\论文中用到的质量评价标准程序\综合评测.xls',zonghe,'sheet1');

