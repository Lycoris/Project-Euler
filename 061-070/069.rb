# http://projecteuler.net/problem=69
#
#

require 'prime'

def Totient_maximum()
	a = make_prime_chain(18)
	return a
end


def make_prime_chain(n)
	a = 1
	Prime.each(n) {|prime|
		a *= prime
	}
	return a
end




	puts "Answer: #{Totient_maximum()}"		# Answer: 510510
