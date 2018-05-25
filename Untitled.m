s=imread('foto.tiff');
d=imnoise(s,'gaussian'); %Gaussian gürültüsü eklendi 

%imshow(d);
%ilk=d; %imshow da ilk ghali olarak göstericez.
Gurultulu=d; %Resim Yüklendi
Gurultulu=im2double(Gurultulu); %Double tipine çevrildi.
%hGaussionFiltresi=fspecial('gaussian',3,2); %maske 3x3lük%
%gaussianFiltresi=imfilter(Gurultulu,hGaussionFiltresi,'replicate');
gaussianFiltresi=imgaussfilt(Gurultulu,1);

figure;
subplot(1,3,1);
imshow(s);
title('Gaussian eklenmemiþ gürültü ');
subplot(1,3,2);
imshow(Gurultulu);
title('Görüntüye gaussian gürültüsü eklenmiþ hali ');
subplot(1,3,3);
a= imshow(gaussianFiltresi,[]);
title('Gaussion Filtresinin kaldýrýlmýþ hali ');