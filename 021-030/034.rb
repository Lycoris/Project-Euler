# http://projecteuler.net/problem=34
#
#


def digit_factorials
	answer = 0
	9999998.times {|i|
		next if i == 0 or i == 1
		answer += i + 1 if i + 1 == fact(i + 1)
	}
	return answer
end


def fact(n)
	f = {0 =>1,
	  1 => 1,
	  2 => 2,
	  3 => 6,
	  4 => 24,
	  5 => 120,
	  6 => 720,
	  7 => 5040,
	  8 => 40320,
	  9 => 362880}
	answer = 0
	(Math.log10(n).floor + 1).times {|i|
		answer += f[(n % (10 ** (i + 1))) / (10 ** i)]
	}
	return answer
end

	puts "Answer: #{digit_factorials}"	# Answer: 40730
