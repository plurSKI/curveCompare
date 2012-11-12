function x = powerSub()
  iter = .1;
  m = 100;
  l = 1;
  for i = -m:m
  	for j = -m:m
		ti = iter * (-i);
		tj = iter * j;
		x(l) = (ti ^ tj) - (tj ^ ti);
		l = l + 1;
	endfor
   endfor
endfunction
