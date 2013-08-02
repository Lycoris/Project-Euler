# http://projecteuler.net/problem=92
#
#


def square_digit_chains(num)
	t0 = Time.now
	@database = Hash.new
	make_database(num)
	a = database_search(num)
	t1 = Time.now
	puts "#{t1 - t0} sec."
	return a
end


def make_database(n)
	@max = 0
	Math.log10(n).floor.times {|i|
		@max += ((n / (10 ** i)) % 10) ** 2
	}
	for i in 1..@max
		x = i
		while 0 < 1
			a = 0
			for j in 0..(Math.log10(x))
				a += ((x / (10 ** j)) % 10) ** 2
			end
			if a == 89 then
				@database[i] = true
				break
			elsif a == 1 then
				@database[i] = false
				break
			elsif a < i then
				@database[i] = @database[a]
				break
			end
			x = a
		end
	end
	p "Making database is finished."
end


def database_search(n)
	a = 0
	for i in 1..n
		x = 0
		if i < @max + 1 then
			if @database[i] == true then
				a += 1
				p i
				p @database[i]
				next
			end
		end
		Math.log10(i).floor.times {|j|
			x += ((i / (10 ** j)) % 10) ** 2
		}
		if @database[x] == true then
			a += 1
		end
		p i
		p @database[x]
	end
	return a
end


puts "Answer:#{square_digit_chains(9999999)}"		# Answer: Answer:8581146
