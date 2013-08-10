# http://projecteuler.net/problem=7
#
#

require 'prime'


def nth_prime(num)
	a = 0
	Prime.each(nil) {|prime|
		a += 1
		if a == num then
			return prime
		end
	}
end


	puts "Answer: #{nth_prime(10001)}"		# Answer: 104743
