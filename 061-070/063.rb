# http://projecteuler.net/problem=63
#
#

def Powerful_digit_counts()
	b = 0
	answer = 0
	while true
		b += 1
		a = 0
			for a in 1..9
				if a ** b / 10 ** (b - 1) > 0 and a ** b / 10 ** (b - 1) < 10 then
					puts a ** b
					answer += 1
				elsif a == 9
					return answer
				end
			end
	end
end

puts "Answer: #{Powerful_digit_counts()}"	# Answer: 49
