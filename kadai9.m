% 課題９ メディアンフィルタと先鋭化 
% メディアンフィルターを適用し，ノイズ除去せよ． 

 
ORG = imread('source.jpg'); % 画像の読み込み 
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換 
imagesc(ORG); colormap(gray); colorbar; % 画像の表示 
pause; 
ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付 
imagesc(ORG); colormap(gray); colorbar; % 画像の表示 
pause; 
IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去 
imagesc(IMG); colormap(gray); colorbar; % 画像の表示 
pause; 
IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去 
imagesc(IMG); colormap(gray); colorbar; % 画像の表示 
pause; 
