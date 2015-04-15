
%读入彩色图像，产生视频流信号
clear all

	% read the image TestImage.bmp
	orig_im= imread('test.jpg', 'jpg');
	
	% convert to RGB color scale
	[nrws ncls colr] = size(orig_im);
	dbl=double(orig_im);
	color_im      = zeros(nrws, ncls);
	color_factors =[256*256; 256; 1];
	for j=1:ncls
	    for i=1:nrws
	        color_im(i,j)= [dbl(i,j,1) dbl(i,j,2) dbl(i,j,3)] * color_factors ;
	    end
	end
	
	% linearized array
	r1 = double(color_im);
	t = 1:ncls*nrws+10;
	simin.signals.values = zeros(ncls*nrws+10,1);
	sop.signals.values = zeros(ncls*nrws+10,1);
    eop.signals.values = zeros(ncls*nrws+10,1);
    valid.signals.values =ones(ncls*nrws+10,1);%数据有效
    valid.signals.values(ncls*nrws+1)=0;
    valid.signals.values(ncls*nrws+2)=0;
	simin.time = t;
	sop.time = t;
    eop.time = t;
    valid.time = t;
    simin.signals.values(1)=0;%数据头0
    sop.signals.values(1)=1;%数据开始
    eop.signals.values(ncls*nrws+1)=1;%数据结束;
	for i=1:nrws
	    for j=1:ncls
	          simin.signals.values((i-1)*ncls+j+1) = r1(i,j);
	  end
	end
	

