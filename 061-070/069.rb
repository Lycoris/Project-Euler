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


def coprime?(m, n)
	a = Prime.prime_division(m)
	b = Prime.prime_division(n)
	a = Hash[*a.flatten]
	b = Hash[*b.flatten]
	a.each_key {|k|
		if b[k] != nil then
			return false
		end
	}
	return true
end


	puts "Answer: #{Totient_maximum()}"		# Answer: 510510
