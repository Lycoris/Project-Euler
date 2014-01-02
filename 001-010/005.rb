# http://projecteuler.net/problem=5
#
#

require 'prime'

def smallest_multiple(n)
	m = Hash.new(0)
	answer = 1
	n.times {|i|
		im = (i + 1).prime_division
		im.each_index {|x|
			m[im[x][0]] = im[x][1] if im[x][1] > m[im[x][0]]
		}
	}
	m.each {|a, b|
		answer *= a ** b
	}
	return answer
end


	puts "Answer: #{smallest_multiple(20)}"		# Answer: 232792560
