# http://projecteuler.net/problem=205
#
#


def dicegame
	p_dice = [1, 2, 3, 4]
	c_dice = [1, 2, 3, 4, 5, 6]
	peter = p_dice.repeated_permutation(9).to_a
	colin = c_dice.repeated_permutation(6).to_a
	win = 0
	peter.each_index {|i|
		peter[i] = sum(peter[i])
	}
	colin.each_index {|i|
		colin[i] = sum(colin[i])
	}
	p_map = Hash.new(0)
	c_map = Hash.new(0)
	peter.each {|i|
		p_map[i] += 1
	}
	colin.each {|i|
		c_map[i] += 1
	}
	peter.uniq.each {|i|
		colin.uniq.each {|j|
			win += p_map[i] * c_map[j] if i > j
		}
	}
	return "0." + ((win.to_f / ((p_dice.size ** 9) * (c_dice.size ** 6))) * 10 ** 7).round.to_s
end


def sum(ary)
	answer = 0
	ary.each {|i|
		answer += i
	}
	return answer
end


	puts "Answer: #{dicegame}"	# Answer: 0.5731441
