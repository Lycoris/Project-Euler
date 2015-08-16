# http://projecteuler.net/problem=15
#
#

def lattice_paths(x, y)
	path = Array.new(x + 1).map!{Array.new}
	x.times {|i| path[i + 1][0] = 1}
	y.times {|i| path[0][i + 1] = 1}
	x.times {|i| y.times {|j| path[i + 1][j + 1] = path[i][j + 1] + path[i + 1][j]}}
	return path[x][y]
end


puts "Answer: #{lattice_paths(20, 20)}"		# Answer: 137846528820
