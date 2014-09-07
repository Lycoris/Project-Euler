def fib(n)
  @fib ||= []
  @fib[n] ||= n <= 1 ? n : fib(n - 2) + fib(n - 1)
  return @fib[n]
end
