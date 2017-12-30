# http://projecteuler.net/problem=493
#
#


require '../lib/fact'

def rainbow(n)
  return (7 * (1 - c(60, n).to_f / c(70, n).to_f)).round(9)
end

def c(n, r)
  return p(n, r) / fact(r)
end

def p(n, r)
  return fact(n) / fact(n - r)
end


puts "Answer: #{rainbow(20)}"   # Answer: 6.818741802
