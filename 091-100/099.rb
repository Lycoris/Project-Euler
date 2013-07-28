# http://projecteuler.net/problem=99
#
#

def Largest_exponential()
	f = open("base_exp.txt") 
	a= f.read.split(/\n/)
	for i in 0..(a.size - 1)
		a[i] = a[i].split(",")
		for j in 0..1
			a[i][j] = a[i][j].to_i
		end
	end
	b = Array.new
	for i in 0..(a.size - 1)
		b[i] = a[i][1] * Math.log10(a[i][0])
	end
	max = b.sort.last
	return b.index(max) + 1
end



	puts "Answer: #{Largest_exponential()}"		# Answer: 709
