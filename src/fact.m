## usage: fact (n)
##
## Return the factorial of the integer n
##
function f = fact(n)
  if (n <= 1)
    f = 1;
  else
    f = n * fact(n - 1);
  endif
endfunction

for i = 0 : 20
  printf("%3d! = %0.0f\n", i, fact(i));
endfor

