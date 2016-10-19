function valid = pingjia_me(I)
% 功能 细节强度 对应无参考评价 李大鹏 吕晶 值越大越好
% I=double(imread(['G:\研二所有论文相关\研二上的一篇Retinex去雾论文\论文中用到的图片\原图\1.jpg']))/255;%读入原图
[h,w,c] = size(I);
F=zeros(size(I));
k = 5;  %确定滤波模板操作尺寸
alf = 5;  %值越大的图片能亮点 比如取3就比去6会亮点
[x y]=meshgrid((-(k-1)/2):((k-1)/2),(-(k-1)/2):((k-1)/2));  
F1=exp(-(x.^2+y.^2)./(alf.^2));  %生成标准的高斯滤波器模板
F1 = F1/sum(sum(F1));
F(:,:,1) = imfilter(I(:,:,1),F1,'conv','replicate');  %进行高斯滤波计算
F(:,:,2) = imfilter(I(:,:,2),F1,'conv','replicate');  %进行高斯滤波计算
F(:,:,3) = imfilter(I(:,:,3),F1,'conv','replicate');  %进行高斯滤波计算
gray_F = rgb2gray(F);


J = zeros(h,w);
Y = zeros(h,w);
for i = 1:h
    for j = 1:w
        J(i,j)=max(I(i,j,:));  
    end
end
% figure;imshow(J);
Y=ordfilt2(J,49,ones(7,7));  %相当于3×3的最大值滤波       
L = edge(gray_F,'canny',[0.0375,0.0938]);
% figure;imshow(L);
L_S = length(find(L==1));
k2 = 7;
F2 = zeros(7,7);
F2 = F2 + 1;
J_B = imfilter(Y,F2,'conv','replicate');  %进行高斯滤波计算
J_B = J_B.* L;
I_halo = sum(sum(J_B)); %对应公式6
valid =(L_S -I_halo/k2^2 )/L_S;
end
