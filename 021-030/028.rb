# http://projecteuler.net/problem=28
#
#

def number_spiral(n)
	i = -1
	answer = 0
	until i == n
		i += 2
		if i == 1 then
			answer += 1
			x = 1
			next
		end
		4.times {|j|
			x += i - 1
			answer += x
		}
	end
	return answer
end


puts "Answer: #{number_spiral(1001)}"	# Answer: 669171001
