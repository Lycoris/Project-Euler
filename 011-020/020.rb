# http://projecteuler.net/problem=20
#
#


def factorial_digit_sum(x)
	a, s = 1, 0
	x.downto(2) {|n|
		a *= n
	}
	a = a.to_s.split(//)
	a.each {|i|
		s += i.to_i
	}
	return s
end


	puts "Answer: #{factorial_digit_sum(100)}"	# Answer: 648
