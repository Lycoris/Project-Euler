# http://projecteuler.net/problem=81
#
#

def matrix_search(matrix)
	f = open(matrix)
	m = f.read.split(/\n/)
	m.each_index {|i| m[i] = m[i].split(",")}
	m.each {|n| n.each_index {|p| n[p] = n[p].to_i}}
	m.each_index {|v|
		m[v].each_index {|h|
			if v > 0 and h > 0 then
				m[v][h] += [m[v - 1][h], m[v][h - 1]].sort.first
			elsif v < 1  and h > 0  then
				m[v][h] += m[v][h - 1]
			elsif h < 1 and v > 0 then
				m[v][h] += m[v - 1][h]
			end
		}
	}
	answer = m[m.size - 1].last
	return answer
end


puts "Answer: #{matrix_search("matrix.txt")}"	# Answer: 427337
