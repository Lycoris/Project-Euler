# http://projecteuler.net/problem=48
#
#


def self_powers(n)
	ans = 0
	n.times {|i|
		x = 1
		(i + 1).times {|j|
			x *= (i + 1)
			x = x % 10000000000
		}
		ans += x
	}
	return ans % 10000000000
end


	puts "Answer: #{self_powers(1000)}"		# Answer: 9110846700
