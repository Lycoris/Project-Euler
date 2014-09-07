# http://projecteuler.net/problem=53
#
#

require '../lib/fact'

def conbi(l)
	answer = 0
  99.times {|n|
		n = n + 2
		1.upto(n) {|r|
      answer += 1 if c(n, r) > l
		}
	}
  return answer
end


def c(n, r)
  r = n - r if r > (n / 2)
  return fact(n)/(fact(r) * fact(n - r))
end


puts "Answer: #{conbi(1000000)}"  # Answer: 4075
