# http://projecteuler.net/problem=71
#
#


def ordered_fraction(n, d, l)
	answer = 0
	l.downto(2) {|i|
		p i
		1.upto(i - 1) {|j|
			if Rational(j, i) >= Rational(3, 7) then
				if Rational(j - 1, i) > answer then
					answer = Rational(j - 1, i)
					p answer
					break
				else
					break
				end
			end
		}
	}
	return answer
end


	puts "Answer: #{ordered_fraction(3, 7, 1000000)}"	# Answer: 428570
