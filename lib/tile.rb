
require_relative 'fact'

def tile(u, c)
	ans = 0
	(u / c).downto(1) {|r|
		arr = [c] * r + [1] * (u - c * r)
		p arr
		ans += fact(arr.size) / (fact(r) * fact(u - c * r))
	}
	return ans
end

