
%��vip��Ƶ������Ƶ������ʾ

gray_im  = zeros(nrws, ncls);					
		for i=1:nrws
		    for j=1:ncls
		    gray_im(i,j)=uint8(simout.signals.values((i-1)*ncls+j+7)/(256*256));%���ȡ1·�Ҷ����ݷ������    
		    end
        end		  
		 gray_im=mat2gray(gray_im,[0,255]);%��0~255�ĻҶ�����ת��Ϊ0~1�Ҷ�����
		figure(1);
		subplot(2,2,1);
		
		imshow(orig_im);
		title('input - Color');
		  
		subplot(2,2,2);
		imshow(gray_im);
		title('output - Gray');
		
		
	
	

