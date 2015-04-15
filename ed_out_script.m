
%将vip视频流的视频数据显示

gray_im  = zeros(nrws, ncls);					
		for i=1:nrws
		    for j=1:ncls
		    gray_im(i,j)=uint8(simout.signals.values((i-1)*ncls+j+7)/(256*256));%逐点取1路灰度数据放入矩阵    
		    end
        end		  
		 gray_im=mat2gray(gray_im,[0,255]);%将0~255的灰度数据转换为0~1灰度数据
		figure(1);
		subplot(2,2,1);
		
		imshow(orig_im);
		title('input - Color');
		  
		subplot(2,2,2);
		imshow(gray_im);
		title('output - Gray');
		
		
	
	

