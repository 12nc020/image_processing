% �ۑ�Q�@�K�����Ƌ^���֊s 
% �Q�K���C�S�K���C�W�K���̉摜�𐶐�����D 


clear; % �ϐ��̃I�[���N���A 
 
 
ORG=imread('source.png'); % ���摜�̓��� 
ORG = rgb2gray(ORG); colormap(gray); colorbar; 
imagesc(ORG); axis image; % �摜�̕\�� 
pause; % �ꎞ��~ 
 
 
% �Q�K���摜�̐��� 
IMG = ORG>128; 
imagesc(IMG); colormap(gray); colorbar;  axis image; 
pause; 
 
 
% �S�K���摜�̐��� 
IMG0 = ORG>64; 
IMG1 = ORG>128; 
IMG2 = ORG>192; 
IMG = IMG0 + IMG1 + IMG2; 
imagesc(IMG); colormap(gray); colorbar;  axis image; 
