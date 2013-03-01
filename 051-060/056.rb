# http://projecteuler.net/problem=56
#
#

def max_digit_sum(a,b)
	max = 0
	for i in 1..a
		for j in 1..b
			n = i ** j
			if digit_sum(n) > max then
				max = digit_sum(n)
			end
		end
	end
	return max
end

def digit_sum(num)
	sum = 0
	num = num.to_s.split(//)
	for i in 1..(num.size)
		sum += num[i-1].to_i
	end
	return sum
end





puts "Answer:#{max_digit_sum(99,99)}"	# Answer: 972
