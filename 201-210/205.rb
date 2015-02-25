# http://projecteuler.net/problem=205
#
#

	P_dice = [1, 2, 3, 4]
	C_dice = [1, 2, 3, 4, 5, 6]

def dicegame
	peter, colin = P_dice.repeated_permutation(9).to_a, C_dice.repeated_permutation(6).to_a
	w = 0
	peter.each_index {|i| peter[i] = sum(peter[i])}
	colin.each_index {|i| colin[i] = sum(colin[i])}
  p_map = Hash.new(0)
  c_map = Hash.new(0)
	peter.each {|i| p_map[i] += 1}
	colin.each {|i| c_map[i] += 1}
	peter.uniq.each {|i| colin.uniq.each {|j| w += p_map[i] * c_map[j] if i > j}}
	return "0." + ((w.to_f / ((P_dice.size ** 9) * (C_dice.size ** 6))) * 10 ** 7).round.to_s
end


def sum(ary)
  return ary.inject(0) {|r, i| r += i}
end


	puts "Answer: #{dicegame}"	# Answer: 0.5731441
