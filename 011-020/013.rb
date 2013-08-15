# http://projecteuler.net/problem=13
#
#


def sum
	ans = 0
	File.open("013.txt") {|f|
		while n = f.gets
			n = n.chomp.to_i
			ans += n
		end
	}
	p ans
end


sum
