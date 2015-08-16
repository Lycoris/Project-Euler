# http://projecteuler.net/problem=34
#
#

require '../lib/fact'


def digit_factorials
	answer = 0
	9999998.times {|i|
		next if i == 0 or i == 1
		answer += i + 1 if i + 1 == fact(i + 1)
	}
	return answer
end


puts "Answer: #{digit_factorials}"	# Answer: 40730
