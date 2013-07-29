# http://projecteuler.net/problem=102
#
#


def origin_is_inner(file)
	ans = 0
	open(file) {|f|
		while t = f.gets
			t = t.chomp
			t = t.split(",")
			t.each_index {|i| t[i] = t[i].to_i}
			ab = [t[2] - t[0], t[3] - t[1]]
			bc = [t[4] - t[2], t[5] - t[3]]
			ca = [t[0] - t[4], t[1] - t[5]]
			ao = [-t[0], -t[1]]
			bo = [-t[2], -t[3]]
			co = [-t[4], -t[5]]
			if ab[0] * ao[1] - ab[1] * ao[0] > 0 and bc[0] * bo[1] - bc[1] * bo[0] > 0 and ca[0] * co[1] - ca[1] * co[0] > 0 then
				p true
				ans += 1
			elsif ab[0] * ao[1] - ab[1] * ao[0] < 0 and bc[0] * bo[1] - bc[1] * bo[0] < 0 and ca[0] * co[1] - ca[1] * co[0] < 0 then
				p true
				ans += 1
			else
				p false
			end
		end
	}
	return ans
end


	puts "Answer: #{origin_is_inner("triangles.txt")}"		# Answer: 228
