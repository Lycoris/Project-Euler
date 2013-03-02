# http://projecteuler.net/problem=57
#
#

def how_many_time_exceed(num)
	answer = 0
	for i in 2..num
		a = Rational(1, 2)
		for j in 2..i
			a += 2
			a = 1 / a
			if j == i then
				a += 1
			end
		end
		if how_many_digits(a.numerator) > how_many_digits(a.denominator) then
			answer += 1
		end
	end
	return answer
end


def how_many_digits(num)
	num = num.to_s.split(//)
	return num.size
end





puts "Answer: #{how_many_time_exceed(1000)}"	# Answer: 153
