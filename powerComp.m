function x = powerComp()
  iter = .05;
  m = 200;

  for i = -m:m
  	for j = -m:m
		ti = iter * (-i);
		tj = iter * j;
		if ( (ti^tj) == (tj^ti) )
			x(i+m+1,j+m+1) = 5;
		elseif ( abs(imag(ti^tj)) > 0 | abs(imag(tj^ti)) )
		   if ( norm((ti^tj)) < norm((tj^ti)) )
			x(i+m+1,j+m+1) = 3;
		   else
			x(i+m+1,j+m+1) = 4;
	           endif
		else
		   if ( ((ti^tj)) < ((tj^ti)) )
			x(i+m+1,j+m+1) = 1;
		   else
			x(i+m+1,j+m+1) = 2;
		   endif
		 endif
	endfor
   endfor
endfunction
