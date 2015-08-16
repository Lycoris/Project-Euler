# http://projecteuler.net/problem=72
#
#

require 'prime'

def cofrac(n)
  ans = 0
  n.times {|i|
    next if i == 0
    phi = i + 1
    Prime.prime_division(i + 1).each {|p| phi *= 1 - Rational(1, p[1])}
    puts phi.to_i
  }
end


puts "Answer: #{cofrac(1000000)}"
