% ɫ����ԭ�̶� �ж�ֱ��ͼ��ƥ���� ֱ��ͼ����һ��ʱֵΪ1 ֵԽ��Խ��
% ��Ӧ�޲ο����� ����� ����
function d = sediao(I1,I2)
% I1=double(imread(['G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\ԭͼ\1.jpg']))/255;%����ԭͼ
% I2=double(imread(['G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\MSRCR\1.jpg']))/255;%����ԭͼ
% I1=imread(['G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\ԭͼ\1.jpg']);%����ԭͼ
% I2=imread(['G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\MSRCR\1.jpg']);%����ԭͼ
% I2=imread(['G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\�����˲�\1.jpg']);%����ԭͼ
% I2=imread(['G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\�����㷨\1.jpg']);%����ԭͼ
gray_I1 = rgb2gray(I1);  %ת���ɻҶ�ͼ
% figure;imshow(gray_I1);
gray_I2 = rgb2gray(I2);
[h,w] = size(gray_I1);   %��ȡ�ߴ�
% figure;imhist(gray_I1);
[counts1,x1]=imhist(gray_I1);      %����ֱ��ͼͼ������counts
% figure;imhist(gray_I2);  
[counts2,x2]=imhist(gray_I2);      %����ֱ��ͼͼ������counts
counts1_1 = counts1/h/w;   %����ֱ��ͼ���Ҷ�ֵ�ĸ���
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
% %% ��һ�� ��������ͼ��Ĺ�һ��ֱ��ͼ
% a = zeros(1,255); %��ǰԤ���ռ�
% L=256;
% for n = 0:L-1
%     A = find(gray_I1==n);
%     a(n+1)=length(A); % ͳ�ƻҶȼ�Ϊn������
% end
% p = a/(h*w);       % ��һ������pi��ʾ��ֱ��ͼ�ĸ�������
end