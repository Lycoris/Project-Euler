# http://projecteuler.net/problem=55
#
#


	def how_many_Lychrel(num)
		answer = 0
		for i in 1..num do
			j = 1
			p = i + rev_int(i)
			if is_palindromic(p) then
					answer += 1
			else
					while j < 50
						p = p + rev_int(p)
						if is_palindromic(p) then
							answer += 1
							break
						end
							j += 1
					end
			end
		end
		answer = num - answer
		return answer
	end
		

	def rev_int(num)
		num = num.to_s.split(//)
		num.reverse!
		n = ""
		for i in 0..(num.size - 1) do
				n = n + num[i]
		end
		n = n.to_i
		return n
	end


	def is_palindromic(num)
		if num == rev_int(num)
			return true
		else
			return false
		end
	end


	puts "Answer: #{how_many_Lychrel(9999)}"	# Answer: 249


