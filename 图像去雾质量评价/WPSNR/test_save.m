% ��ȡԭͼ MSRCR �����˲� �����㷨�������Ϣ�� ��������excel���
clc
clear
letter={'1','2','3','4','5'};
for j=1:size(letter,2),
    Y{j}=imread(['G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\ԭͼ\',letter{j},'.', 'jpg']);%����ԭͼ
    M{j}=imread(['G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\MSRCR\',letter{j},'.', 'jpg']);%����MSRCR������ͼ
    G{j}=imread(['G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\�����˲�\',letter{j},'.', 'jpg']);%���������˲�������ͼ
    B{j}=imread(['G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\�����㷨\',letter{j},'.', 'jpg']);%���뱾���㷨������ͼ
    result(j,1)=Wpsnr(M{j},Y{j});
    result(j,2)=Wpsnr(G{j},Y{j});
    result(j,3)=Wpsnr(B{j},Y{j});
end
 xlswrite('G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\�������õ����������۱�׼����\WPSNR.xls',result,'sheet1');

