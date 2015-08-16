# http://projecteuler.net/problem=87
#
#
require 'prime'


def prime_power_triples(l)
	answer = Array.new
	ary_a = Array.new
		Prime.each {|a|
			x = a ** 4 + 12
			break if x >= l
			ary_a << a
		}
	ary_b = Array.new
	ary_a.reverse.each {|a|
		Prime.each {|b|
			x = a ** 4 + b ** 3 + 4
			break if x >= l
			ary_b << b
		}
	}
	ary_b.uniq!
	ary_a.reverse.each {|a|
		ary_b.reverse.each {|b|
			Prime.each {|c|
				x = a ** 4 + b ** 3 + c ** 2
				break if x >= l
				answer << x
			}
		}
	}
	return answer.uniq.size
end


puts "Answer: #{prime_power_triples(50000000)}"		# Answer: 1097343
