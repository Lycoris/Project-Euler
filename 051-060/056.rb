# http://projecteuler.net/problem=56
#
#

def max_digit_sum(a,b)
	max = 0
	a.times {|i|
		b.times {|j|
			n = (i + 1) ** (j + 1)
			if digit_sum(n) > max then
				max = digit_sum(n)
			end
		}
	}
	return max
end

def digit_sum(num)
	sum = 0
	num = num.to_s.split(//)
	num.size.times {|i|
		sum += num[i].to_i
	}
	return sum
end





puts "Answer:#{max_digit_sum(99,99)}"	# Answer: 972
