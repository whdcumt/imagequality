% ��ȡԭͼ MSRCR �����˲� �����㷨�������Ϣ�� ��������excel���
clc
clear
letter={'1','2','3','4','5'};
for j=1:size(letter,2),
    Y{j}=imread(['G:\��������Ͷ�����\׼�������Ӣ�ĵı�Եȥ��\ͼƬ\ԭͼ\�õĶԱȽ��\ԭͼ\ԭͼ\',letter{j},'.', 'jpg']);%����ԭͼ
    M{j}=imread(['G:\��������Ͷ�����\׼�������Ӣ�ĵı�Եȥ��\ͼƬ\ԭͼ\�õĶԱȽ��\ԭͼ\MSR\�����õ���ͼ\',letter{j},'.', 'jpg']);%����MSRCR������ͼ
    H{j}=imread(['G:\��������Ͷ�����\׼�������Ӣ�ĵı�Եȥ��\ͼƬ\ԭͼ\�õĶԱȽ��\ԭͼ\MSR\�����õ���ͼ\NASA\',letter{j},'.', 'jpg']);%����MSRCR������ͼ
    G{j}=imread(['G:\��������Ͷ�����\׼�������Ӣ�ĵı�Եȥ��\ͼƬ\ԭͼ\�õĶԱȽ��\ԭͼ\He\�����õ���ͼ\',letter{j},'.', 'jpg']);%���������˲�������ͼ
    B{j}=imread(['G:\��������Ͷ�����\׼�������Ӣ�ĵı�Եȥ��\ͼƬ\ԭͼ\�õĶԱȽ��\ԭͼ\����\�����õ���ͼ\',letter{j},'.', 'jpg']);%���뱾���㷨������ͼ
    junzhi(j,1) = mean2(Y{j});   %ԭͼ�����ڵ�һ��
    junzhi(j,2) = mean2(M{j});
    junzhi(j,3) = mean2(H{j});
    junzhi(j,4) = mean2(G{j});
    junzhi(j,5) = mean2(B{j});
 
    biaozhuncha(j,1) = std2(Y{j});   %ԭͼ�����ڵ�һ��
    biaozhuncha(j,2) = std2(M{j});
    biaozhuncha(j,3) = std2(H{j});
    biaozhuncha(j,4) = std2(G{j});
    biaozhuncha(j,5) = std2(B{j});

    fangcha(j,1) = std2(Y{j})^2;   %ԭͼ�����ڵ�һ��
    fangcha(j,2) = std2(M{j})^2;
    fangcha(j,3) = std2(H{j})^2;
    fangcha(j,4) = std2(G{j})^2;
    fangcha(j,5) = std2(B{j})^2;

end
 xlswrite('G:\��������Ͷ�����\׼�������Ӣ�ĵı�Եȥ��\ͼƬ\ԭͼ\�õĶԱȽ��\ԭͼ\��ֵ.xls',junzhi,'sheet1');
 xlswrite('G:\��������Ͷ�����\׼�������Ӣ�ĵı�Եȥ��\ͼƬ\ԭͼ\�õĶԱȽ��\ԭͼ\��׼��.xls',biaozhuncha,'sheet1');
 xlswrite('G:\��������Ͷ�����\׼�������Ӣ�ĵı�Եȥ��\ͼƬ\ԭͼ\�õĶԱȽ��\ԭͼ\����.xls',fangcha,'sheet1');

