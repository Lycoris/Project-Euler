# http://projecteuler.net/problem=12
#
#

require 'prime'

def highly_divisible(over)
	n = 0
	while true
		n += 1
		arr = triangular(n).prime_division
		r = 1
		arr.each {|a|
			r *= a[1] + 1
		}
		break if r > (over - 1)
	end
	return triangular(n)
end


def triangular(n)
	return (n * (n + 1)) / 2
end


puts "Answer: #{highly_divisible(500)}"		# Answer: 76576500
