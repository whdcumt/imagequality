% ��ȡԭͼ MSRCR �����˲� �����㷨�������Ϣ�� ��������excel���
clc
clear
letter={'1','2','3','4','5'};
for j=1:size(letter,2),
    Y{j}=imread(['G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\ԭͼ\',letter{j},'.', 'jpg']);%����ԭͼ
    M{j}=imread(['G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\MSRCR\',letter{j},'.', 'jpg']);%����MSRCR������ͼ
    G{j}=imread(['G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\�����˲�\',letter{j},'.', 'jpg']);%���������˲�������ͼ
    B{j}=imread(['G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\�����㷨\',letter{j},'.', 'jpg']);%���뱾���㷨������ͼ
    Fcontrast(j,1) = duibidu(Y{j});   %ԭͼ�����ڵ�һ��
    Fcontrast(j,2) = duibidu(M{j});
    Fcontrast(j,3) = duibidu(G{j});
    Fcontrast(j,4) = duibidu(B{j});
end
 xlswrite('G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\�������õ����������۱�׼����\�Աȶ�.xls',Fcontrast,'sheet1');

