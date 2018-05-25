s=imread('foto.tiff');
d=imnoise(s,'gaussian'); %Gaussian g�r�lt�s� eklendi 

%imshow(d);
%ilk=d; %imshow da ilk ghali olarak g�stericez.
Gurultulu=d; %Resim Y�klendi
Gurultulu=im2double(Gurultulu); %Double tipine �evrildi.
%hGaussionFiltresi=fspecial('gaussian',3,2); %maske 3x3l�k%
%gaussianFiltresi=imfilter(Gurultulu,hGaussionFiltresi,'replicate');
gaussianFiltresi=imgaussfilt(Gurultulu,1);

figure;
subplot(1,3,1);
imshow(s);
title('Gaussian eklenmemi� g�r�lt� ');
subplot(1,3,2);
imshow(Gurultulu);
title('G�r�nt�ye gaussian g�r�lt�s� eklenmi� hali ');
subplot(1,3,3);
a= imshow(gaussianFiltresi,[]);
title('Gaussion Filtresinin kald�r�lm�� hali ');