# http://projecteuler.net/problem=73
#
#

def counting_fractions(d)
		answer = 0
		d.times {|i|
			next if i == 0 or i == 1 or i == 2
			Rational(i + 1, 2).floor.downto(Rational(i + 1, 3).ceil) {|j| answer += 1 if Rational(j, i + 1).numerator == j}
		}
		return answer
end


puts "Answer: #{counting_fractions(12000)}"		# Answer: 7295372
