
def fact(n)
  @fact ||= []
  @fact[n] ||= n <= 1 ? 1 : fact(n - 1) * n
  return @fact[n]
end
