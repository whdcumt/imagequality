% ��ȡԭͼ MSRCR �����˲� �����㷨�������Ϣ�� ��������excel���
clc
clear
letter={'1','2','3','4','5'};
for j=1:size(letter,2),
    Y{j}=imread(['F:\����\ͼƬ\fattal��ҳ\buildings_nishino\',letter{j},'.', 'png']);%����ԭͼ
    M{j}=imread(['F:\����\ͼƬ\fattal��ҳ\buildings_output\',letter{j},'.', 'png']);%����MSRCR������ͼ
    H{j}=imread(['F:\����\ͼƬ\fattal��ҳ\buildings_output_eaw\',letter{j},'.', 'png']);%����MSRCR������ͼ
    G{j}=imread(['F:\����\ͼƬ\fattal��ҳ\buildings_output_eaw\',letter{j},'.', 'png']);%���������˲�������ͼ
    B{j}=imread(['F:\����\ͼƬ\fattal��ҳ\buildings_output_eaw\',letter{j},'.', 'png']);%���뱾���㷨������ͼ
    xinxishang(j,1) = shannon(Y{j});   %ԭͼ�����ڵ�һ��
    xinxishang(j,2) = shannon(M{j});
    xinxishang(j,3) = shannon(G{j});
    xinxishang(j,4) = shannon(B{j});
    xinxishang(j,5) = shannon(H{j});
end
 xlswrite('F:\����\ͼƬ\fattal��ҳ\��Ϣ��1.xlsx',xinxishang,'sheet1');

