% close all
% clear all
% clc
% t0=cputime;
% I=im2double(imread('G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\�����˲�\2.jpg'));   %���Ȱ�ͼ����������ת��Ϊ˫���ȸ�������
function Fcontrast= duibidu(I)
I=rgb2gray(I);%��ͼ��ת���ɶ�ά
[Nx,Ny] = size(I);
Ng=256;
G=double(I);


%����Աȶ�
[counts,graylevels]=imhist(I);
PI=counts/(Nx*Ny);
averagevalue=sum(graylevels.*PI);
u4=sum((graylevels-repmat(averagevalue,[256,1])).^4.*PI);
standarddeviation=sum((graylevels-repmat(averagevalue,[256,1])).^2.*PI);
alpha4=u4/standarddeviation^2;
Fcontrast=sqrt(standarddeviation)/alpha4.^(1/4);
% disp('�Աȶȣ�');display(Fcontrast)
end