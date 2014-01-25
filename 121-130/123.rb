# http://projecteuler.net/problem=123
#
#

require 'prime'


def prime_square_remainders(b)
	n = 0
	Prime.each {|p|
		n += 1
		return n if r(n, p) > b
	}
end


def r(n, p)
	a = (p - 1) ** n + (p + 1) ** n
	a = a % (p ** 2)
	return a
end


	puts "Answer: #{prime_square_remainders(10000000000)}"	# Answer: 21035
