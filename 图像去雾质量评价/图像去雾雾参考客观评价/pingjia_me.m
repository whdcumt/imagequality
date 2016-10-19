function valid = pingjia_me(I)
% ���� ϸ��ǿ�� ��Ӧ�޲ο����� ����� ���� ֵԽ��Խ��
% I=double(imread(['G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\ԭͼ\1.jpg']))/255;%����ԭͼ
[h,w,c] = size(I);
F=zeros(size(I));
k = 5;  %ȷ���˲�ģ������ߴ�
alf = 5;  %ֵԽ���ͼƬ������ ����ȡ3�ͱ�ȥ6������
[x y]=meshgrid((-(k-1)/2):((k-1)/2),(-(k-1)/2):((k-1)/2));  
F1=exp(-(x.^2+y.^2)./(alf.^2));  %���ɱ�׼�ĸ�˹�˲���ģ��
F1 = F1/sum(sum(F1));
F(:,:,1) = imfilter(I(:,:,1),F1,'conv','replicate');  %���и�˹�˲�����
F(:,:,2) = imfilter(I(:,:,2),F1,'conv','replicate');  %���и�˹�˲�����
F(:,:,3) = imfilter(I(:,:,3),F1,'conv','replicate');  %���и�˹�˲�����
gray_F = rgb2gray(F);


J = zeros(h,w);
Y = zeros(h,w);
for i = 1:h
    for j = 1:w
        J(i,j)=max(I(i,j,:));  
    end
end
% figure;imshow(J);
Y=ordfilt2(J,49,ones(7,7));  %�൱��3��3�����ֵ�˲�       
L = edge(gray_F,'canny',[0.0375,0.0938]);
% figure;imshow(L);
L_S = length(find(L==1));
k2 = 7;
F2 = zeros(7,7);
F2 = F2 + 1;
J_B = imfilter(Y,F2,'conv','replicate');  %���и�˹�˲�����
J_B = J_B.* L;
I_halo = sum(sum(J_B)); %��Ӧ��ʽ6
valid =(L_S -I_halo/k2^2 )/L_S;
end
