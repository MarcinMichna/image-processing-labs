close all; clearvars; clc;

ertka = imread("ertka.bmp");

SEsq = strel('square', 3);
SEdia = strel('diamond', 3);
SEc = strel('cube', 3);


ertkaErode1 = imerode(ertka,SEsq);
ertkaErode2 = imerode(ertka,SEdia);
ertkaErode3 = imerode(ertka,SEc);

figure;
subplot(2,2,1)
imshow(ertka)
title("oryginal")
subplot(2,2,2)
imshow(ertkaErode1);
title("imerode function square")
subplot(2,2,3)
imshow(ertkaErode2)
title("imerode function diamond")
subplot(2,2,4)
imshow(ertkaErode3)
title("imerode function cube")

%wielokrotnie

%eretka 2
ertkaErode22 = imerode(ertkaErode1,SEsq);

%eretka3
ertkaErode23 = imerode(ertkaErode22,SEsq);

figure;
subplot(1,2,1)
imshow(ertkaErode22)
title("eretka 2 erode")

subplot(1,2,2)
imshow(ertkaErode23)
title("eretka 3 erode")


buzka = imread("buzka.bmp");

M = [   1 1 1;
        1 1 1;
        1 1 1];
    
M1 = [1 0 0;
      0 1 0;
      0 0 1];
    
M2 = [0 0 1;
      0 1 0;
      1 0 0];
buzkaErode = imerode(buzka, M1);
buzkaErode2 = imerode(buzka,M2);
figure;
subplot(1,3,1);
imshow(buzka)
title("oryginal")
subplot(1,3,2)
imshow(buzkaErode);
title("erode1 left")
subplot(1,3,3)
imshow(buzkaErode2)
title("erode right")

%dilate
image = ertka;

figure;
subplot(2,3,1)
imshow(image);
title("orginal")
subplot(2,3,2)
imshow(imerode(image,SEsq))
title("erode")
subplot(2,3,3)
imshow(imdilate(image,SEsq))
title("dilate")
subplot(2,3,4)
imshow(imopen(image,SEsq))
title("open")
subplot(2,3,5)
imshow(imclose(image,SEsq))
title("close")

%mini zadanko
SEsp = strel('sphere', 3);
figure;
imshow(imerode(imclose(ertka,SEsq),SEsp))
title("clear RT")



%13
hom = imread("hom.bmp");
SE1 = [0 1 0; 1 1 1; 0 1 0];
SE2 = [1 0 1; 0 0 0; 1 0 1];

figure;
subplot(1,2,1)
imshow(hom)
title("oryginal")
subplot(1,2,2)
imshow(bwhitmiss(hom,SE1,SE2))
title("bwhitmiss - trafi, nie trafi")



