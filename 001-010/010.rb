# http://projecteuler.net/problem=10
#
#


require 'prime'


def summation_of_primes(x)
	a = 0
	Prime.each(x) {|prime|
		a += prime
	}
	return a
end


	puts "Answer: #{summation_of_primes(2000000)}"		# Answer: 142913828922
