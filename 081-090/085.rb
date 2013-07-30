# http://projecteuler.net/problem=85
#
#


def counting_rectangles(limit)
	n = 0
	a = 0
	ans = 2000000
	while 1 > 0
		n += 1
		for i in 1..n
			if n % i != 0 then
				next
			end
			x = n / i
			if i > x then
				break
			elsif i == x then
				a = abs_to_limit(rec(i, x), limit)
				if a < ans then
					ans = a
				end
				break
			else
				a = abs_to_limit(rec(i, x), limit)
				if a < ans then
					ans = a
				end
			end
		end
		p n
		p ans
		if ans == 2 then
			return n
		end
	end
end


def rec(m, n)
	ans = 0
	for j in 1..m
		for k in 1..n
			ans += (m - j + 1) * (n - k + 1)
		end
	end
	return ans
end


def abs_to_limit(n, limit)
	return (limit - n).abs
end

	puts "Answer: #{counting_rectangles(2000000)}"		# Answer: 2772
