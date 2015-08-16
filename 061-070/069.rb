# http://projecteuler.net/problem=69
#
#

require 'prime'

def Totient_maximum()
	return make_prime_chain(18)
end


def make_prime_chain(n)
	a = 1
	Prime.each(n) {|prime| a *= prime}
	return a
end


puts "Answer: #{Totient_maximum()}"		# Answer: 510510
