# http://projecteuler.net/problem=3
#
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
#
#
require 'prime'

def maxprime(num)
		return Prime.prime_division(num).pop[0]
end


puts "Answer: #{maxprime(600851475143)}"	# Answer: 6857
