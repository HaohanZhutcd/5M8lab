A = imread('kodim23a.png');


AR = A(:,:,1);
histAR = histcounts(AR);
histcAR = cumsum(histAR);
plot(histAR)
AG = A(:,:,2);
histAG = histcounts(AG);
histcAG = cumsum(histAG);

AB = A(:,:,3);
histAB = histcounts(AB);
histcAB = cumsum(histAB);

B = imread('kodim23b.png');
BR = B(:,:,1);
histBR = histcounts(BR);
histcBR = cumsum(histBR);

BG = B(:,:,2);
histBG = histcounts(BG);
histcBG = cumsum(histBG);

BB = B(:,:,3);
histBB = histcounts(BB);
histcBB = cumsum(histBB);

figure("Name","red channel");
plot(histcAR);
hold on;
plot( histcBR);
hold off;

figure("Name","green channel");
plot(histcAG);
hold on;
plot( histcBG);
hold off;

figure("Name","blue channel");
plot(histcAB);
hold on;
plot(histcBB);
hold off;