# http://projecteuler.net/problem=99
#
#

def Largest_exponential()
	f = open("base_exp.txt") 
	a= f.read.split(/\n/)
	a.each_index{|i|
		a[i] = a[i].split(",")
		a[i].each_index{|j|
			a[i][j] = a[i][j].to_i
		}
	}
	b = Array.new
		a.each_index{|i|
			b[i] = a[i][1] * Math.log10(a[i][0])
		}
	max = b.sort.last
	return b.index(max) + 1
end



	puts "Answer: #{Largest_exponential()}"		# Answer: 709
