% close all
% clear all
% clc
% t0=cputime;
% I=im2double(imread('G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\引导滤波\2.jpg'));   %首先把图像数据类型转换为双精度浮点类型
function Fcontrast= duibidu(I)
I=rgb2gray(I);%将图像转换成二维
[Nx,Ny] = size(I);
Ng=256;
G=double(I);


%计算对比度
[counts,graylevels]=imhist(I);
PI=counts/(Nx*Ny);
averagevalue=sum(graylevels.*PI);
u4=sum((graylevels-repmat(averagevalue,[256,1])).^4.*PI);
standarddeviation=sum((graylevels-repmat(averagevalue,[256,1])).^2.*PI);
alpha4=u4/standarddeviation^2;
Fcontrast=sqrt(standarddeviation)/alpha4.^(1/4);
% disp('对比度：');display(Fcontrast)
end