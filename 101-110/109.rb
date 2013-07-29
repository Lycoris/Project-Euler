# http://projecteuler.net/problem=109
#
#


def darts_checkout(n)
	a = 0
	@darts ={}
	20.times {|i|
		@darts["S" + (i + 1).to_s] = i + 1
		@darts["D" + (i + 1).to_s] = 2 * (i + 1)
		@darts["T" + (i + 1).to_s] = 3 * (i + 1)
	}
	@darts["S25"] = 25
	@darts["D25"] = 50
	@darts[0] = 0
	(n / 2).step(1, -1) {|i|
		if i > 20 and i != 25 then
			next
		end
		c = Array.new
		c << "D" + i.to_s
		x = n - 2 * i
		if x == 0 then
			a += 1
			p c
			next
		end
		@darts.each {|k1, v1|
			@darts.each {|k2, v2|
				c = ["D" + i.to_s]
				if v1 + v2 == x then
					case dupulicate_check(k1, k2)
					when k1
						a += 1
						if k1 != 0 then
							c << k1 << k2
						else
							c << k2
						end
						p c
						next
					when k2
						next
					when nil
						a += 1
						c << k1 << k2
						p c
						next
					end
				end
			}
		}
	}
	return a
end


def dupulicate_check(a, b)
	t = @darts.to_a
	if t.index(t.assoc(a)) > t.index(t.assoc(b)) then
		return a
	elsif t.index(t.assoc(a)) < t.index(t.assoc(b)) then
		return b
	else
		return nil
	end
end


def checkout_loop(n)
	ans = 0
	for i in 1..n
		ans += darts_checkout(i)
	end
	return ans
end


	puts "Answer: #{checkout_loop(99)}"		# Answer: 38182
