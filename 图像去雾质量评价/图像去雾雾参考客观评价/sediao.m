% 色调还原程度 判断直方图的匹配性 直方图大致一样时值为1 值越大越好
% 对应无参考评价 李大鹏 吕晶
function d = sediao(I1,I2)
% I1=double(imread(['G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\原图\1.jpg']))/255;%读入原图
% I2=double(imread(['G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\MSRCR\1.jpg']))/255;%读入原图
% I1=imread(['G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\原图\1.jpg']);%读入原图
% I2=imread(['G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\MSRCR\1.jpg']);%读入原图
% I2=imread(['G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\引导滤波\1.jpg']);%读入原图
% I2=imread(['G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\本文算法\1.jpg']);%读入原图
gray_I1 = rgb2gray(I1);  %转换成灰度图
% figure;imshow(gray_I1);
gray_I2 = rgb2gray(I2);
[h,w] = size(gray_I1);   %读取尺寸
% figure;imhist(gray_I1);
[counts1,x1]=imhist(gray_I1);      %返回直方图图像向量counts
% figure;imhist(gray_I2);  
[counts2,x2]=imhist(gray_I2);      %返回直方图图像向量counts
counts1_1 = counts1/h/w;   %计算直方图各灰度值的概率
counts2_2 = counts2/h/w;
c_1_junzhi=mean(counts1_1);
c_2_junzhi=mean(counts2_2);
% c_11_junzhi = sum(counts1.*x1)/h/w;
% c_22_junzhi = sum(counts2.*x2)/h/w;
% c_11_junzhi = sum(counts1_1.*x1)/h/w;
% c_22_junzhi = sum(counts2_2.*x2)/h/w;
c_1_junzhi = sum(counts1_1)/255;
c_2_junzhi = sum(counts2_2)/255;
c_1 = abs(counts1_1-c_1_junzhi);
c_2 = abs(counts2_2-c_2_junzhi);
d1 = sum(c_1.*c_2);
d2=sqrt((sum(c_1.^2).*sum(c_2.^2)));
d=d1/d2;
% d1 = xcorr(counts1,counts2,'unbiased');
% d2 = xcorr(counts1_1,counts2_2,'unbiased');
% d1 = xcorr(counts1,counts2);
% d2 = xcorr(counts1_1,counts2_2);
% %% 第一步 计算输入图像的归一化直方图
% a = zeros(1,255); %提前预留空间
% L=256;
% for n = 0:L-1
%     A = find(gray_I1==n);
%     a(n+1)=length(A); % 统计灰度级为n的数量
% end
% p = a/(h*w);       % 归一化，用pi表示该直方图的各个分量
end