% ��ȡԭͼ MSRCR �����˲� �����㷨�������Ϣ�� ��������excel���
clc
clear
letter={'1','2','3','4','5'};
for j=1:size(letter,2),
    Y{j}=imread(['G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\ԭͼ\',letter{j},'.', 'jpg']);%����ԭͼ
    M{j}=imread(['G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\MSRCR\',letter{j},'.', 'jpg']);%����MSRCR������ͼ
    H{j}=imread(['G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\�ο���\',letter{j},'.', 'jpg']);%����MSRCR������ͼ
    G{j}=imread(['G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\�����˲�\',letter{j},'.', 'jpg']);%���������˲�������ͼ
    B{j}=imread(['G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\�����㷨\',letter{j},'.', 'jpg']);%���뱾���㷨������ͼ
    outval(j,1) = pingjia_me(double(Y{j})/255);   %ԭͼ�����ڵ�һ��  ϸ��
    outval(j,2) = pingjia_me(double(M{j})/255);
    outval(j,3) = pingjia_me(double(G{j})/255);
    outval(j,4) = pingjia_me(double(B{j})/255);
    outval(j,5) = pingjia_me(double(H{j})/255);
    
    sediao1(j,1) = sediao(Y{j},Y{j});   %ԭͼ�����ڵ�һ�� ɫ��
    sediao1(j,2) = sediao(Y{j},M{j});
    sediao1(j,3) = sediao(Y{j},G{j});
    sediao1(j,4) = sediao(Y{j},B{j});
    sediao1(j,5) = sediao(Y{j},H{j});
    
    jiegou(j,1) = ssim(Y{j},Y{j});   %ԭͼ�����ڵ�һ�� ɫ��
    jiegou(j,2) = ssim(Y{j},M{j});
    jiegou(j,3) = ssim(Y{j},G{j});
    jiegou(j,4) = ssim(Y{j},B{j});
    jiegou(j,5) = ssim(Y{j},H{j});
    
    zonghe(j,1) = outval(j,1)*sediao1(j,1)*jiegou(j,1);   %ԭͼ�����ڵ�һ�� ɫ��
    zonghe(j,2) = outval(j,2)*sediao1(j,2)*jiegou(j,2);
    zonghe(j,3) = outval(j,3)*sediao1(j,3)*jiegou(j,3);
    zonghe(j,4) = outval(j,4)*sediao1(j,4)*jiegou(j,4);
    zonghe(j,5) = outval(j,5)*sediao1(j,5)*jiegou(j,5);
end
 xlswrite('G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\�������õ����������۱�׼����\ϸ��ǿ��.xls',outval,'sheet1');
 xlswrite('G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\�������õ����������۱�׼����\ɫ��.xls',sediao1,'sheet1');
 xlswrite('G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\�������õ����������۱�׼����\�ṹ.xls',jiegou,'sheet1');
 xlswrite('G:\�ж������������\�ж��ϵ�һƪRetinexȥ������\�������õ���ͼƬ\�������õ����������۱�׼����\�ۺ�����.xls',zonghe,'sheet1');

