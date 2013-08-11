# http://projecteuler.net/problem=18
#
#

def maximum_path_sum(triangle)
	f = open(triangle)
	t = f.read.split(/\n/)
	t.each_index{|i| t[i] = t[i].split(" ")}
	t.each{|i|
		i.each_index{|j|
			i[j] = i[j].to_i
		}
	}
	t.each_index{|i|
		if t[i + 1] != nil then
			t[i + 1].each_index{|k| 
				if t[i][k - 1] != nil and t[i][k] != nil then
					a = [t[i][k - 1], t[i][k]]
					t[i + 1][k] += a.sort.last
				elsif t[i][k - 1] == nil then
					t[i + 1][k] += t[i][k]
				else
					t[i + 1][k] += t[i][k - 1]
				end
			}
		end
	}
	p t
	answer = t[t.size - 1].sort.last
	return answer
end
