# http://projecteuler.net/problem=121
#
#


def disc_game_prize(g)
	w = (g / 2) + 1
	arr = []
	psum = 0
	g.times {|i| arr << i + 1}
	g.downto(w) {|n|
		arr.combination(n).to_a.each {|a|
			p = 1
			a.each {|b|
				p *= Rational(1 ,b + 1)
			}
			(arr - a).each {|b|
				p *= Rational(b, b + 1)
			}
			psum += p
		}
	}
	profit = 1 - psum
	prize = 0
	while 1 > 0
		prize += 1
		break if prize * psum > profit
	end
	return prize
end

	puts "Answer: #{disc_game_prize(15)}"	# Answer: 2269
