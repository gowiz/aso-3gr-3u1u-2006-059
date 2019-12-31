## Return the factorial of the integer n
function f = fact(n)
  if (n == 0)
    f = 1;
  else
    f = n * fact(n - 1);
  endif
endfunction

