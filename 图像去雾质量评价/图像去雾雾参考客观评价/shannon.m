%�Ҷ�ͼ�Ͳ�ɫͼ����Ϣ��
function s = shannon(img)
% S = IMG_SHANNON(IMG)

if nargin == 1
    img = im2uint8(img);
    
    % Get size of img
    [r,c,b] = size(img);
    
    if b == 1          %�Ҷ�ͼ��Ϣ��
        %s = shannon(img);
        hspec = imhist(img);
        idx = find(hspec == 0);
        hspec(idx) = eps;
        hspec = hspec ./ (r * c);
        H = -(hspec .* log2(hspec));
        s = sum(H(:));
    elseif b == 3      %��ɫͼ��Ϣ��
        band1 = img(:,:,1);
        band2 = img(:,:,2);
        band3 = img(:,:,3);
        outval = zeros(256,256,256);
        for m = 1 : r
            for n = 1 : c
                i = band1(m,n) + 1;
                j = band2(m,n) + 1;
                k = band3(m,n) + 1;
                outval(i,j,k) = outval(i,j,k) + 1;
            end
        end
        
        % ��outval��һ��
        outval = outval ./ (r*c);
        h = -(outval .* log2(outval + eps));
        s = sum(sum(sum(h)));
      end
else
    error('Wrong number of input!');
end