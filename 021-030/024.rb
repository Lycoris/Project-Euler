# http://projecteuler.net/problem=24
#
#


def lexicographic_permutations(x)
	numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
	a = 0
	numbers.permutation(10) {|arr|
		a += 1
		if a == x then
			return arr.join
		end
	}
end


	puts "Answer: #{lexicographic_permutations(1000000)}"	# Answer: 2783915460
