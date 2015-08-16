# http://projecteuler.net/problem=21
#
#

require 'prime'

def amicable_numbers(n)
	answer = 0
	(n - 1).times {|i|
		next if i == 0
		answer += i + 1 if i + 1 == d(d(i + 1)) and i + 1 != d(i + 1)
	}
	return answer
end


def d(n)
	d = 1
	n.prime_division.each {|a|
		r = 1
		a[1].times {|b| r += a[0] ** (b + 1)}
		d *= r
	}
	return d - n
end


puts "Answer: #{amicable_numbers(10000)}"	# Answer: 31626
