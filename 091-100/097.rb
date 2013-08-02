# http://projecteuler.net/problem=97
#
#
def large_non_Mersenne_prime
	a = 1
	7830457.times {|i|
		a *= 2
		a = a % 10000000000
	}
	a = (a * 28433) % 10000000000
	a += 1
	return a
end

puts "Answer: #{large_non_Mersenne_prime}"	# Answer: 8739992577
