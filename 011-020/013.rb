# http://projecteuler.net/problem=13
#
#


def sum(d)
	ans = 0
	File.open(d) {|f|
		while n = f.gets
			ans += n.chomp.to_i
		end
	}
	return ans / 10 ** (Math.log10(ans).ceil - 10)
end


puts "Answer: #{sum("013.txt")}"  # Answer: 5537376230
