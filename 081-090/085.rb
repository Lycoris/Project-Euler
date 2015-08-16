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
      next if n % i != 0
			x = n / i
			if i > x then
				break
			elsif i == x then
				a = abs_to_limit(rec(i, x), limit)
        ans = a if a < ans
				break
			else
				a = abs_to_limit(rec(i, x), limit)
        ans = a if a < ans
			end
		end
    return n if ans == 2
	end
end


def rec(m, n)
	ans = 0
  1.upto(m) {|j| 1.upto(n) {|k| ans += (m - j + 1) * (n - k + 1)}}
	return ans
end


def abs_to_limit(n, limit)
	return (limit - n).abs
end

puts "Answer: #{counting_rectangles(2000000)}"		# Answer: 2772
