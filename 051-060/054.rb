# http://projecteuler.net/problem=54
#
#


def poker
	p1_win = 0
	open("poker.txt") {|file|
		while l = file.gets
			l.chomp!
			c = l.split(" ")
			p1 = [c[0].split(//), c[1].split(//), c[2].split(//), c[3].split(//), c[4].split(//)]
			p2 = [c[5].split(//), c[6].split(//), c[7].split(//), c[8].split(//), c[9].split(//)]
      p1_win += 1 if p1_is_win(p1, p2) == true
		end
	}
	return p1_win
end


def p1_is_win(p1, p2)
	h1 = hand(p1)
	h2 = hand(p2)
	if h1[0] > h2[0] then
		return true
	elsif h1[0] < h2[0] then
		return false
	elsif h1[0] == 0 and h2[0] == 0 then
		c1 = number_map(p1)
		c2 = number_map(p2)
		4.downto(0) {|i|
			if c1[i] > c2[i] then
				return true
			elsif c1[i] < c2[i] then
				return false
			end
		}
	else
		if h1[1] > h2[1] then
			return true
		elsif h1[1] < h2[1] then
			return false
		else
		c1 = number_map(p1)
		c2 = number_map(p2)
		4.downto(0) {|i|
			if c1[i] > c2[i] then
				return true
			elsif c1[i] < c2[i] then
				return false
			end
		}
		end
	end
end


def number_map(p)
	number = {"2" => 1, "3" => 2, "4" => 3, "5" => 4, "6" => 5, "7" => 6, "8" => 7, "9" => 8, "T" => 9, "J" => 10, "Q" => 11, "K" => 12, "A" => 13}
	numbers = Array.new
	5.times {|i| numbers << number[p[i][0]]}
	numbers.sort!
	return numbers
end


def hand(p)
	# 0 : High Card
	# 1 : One Pair
	# 2 : Two Pairs
	# 3 : Three of a Kind
	# 4 : Straight
	# 5 : Flush
	# 6 : Full House
	# 7 : Four of a Kind
	# 8 : Straight Flush
	# 9 : Royal Flush
	s = Array.new
	5.times {|i| s << p[i][1]}
	n = number_map(p)
	straight = false
	4.downto(1) {|i|
		if n[i] - n[i - 1] != 1 then
			straight = false
			break
		elsif i == 1 then
			straight = true
			break
		end
	}
	v = n[4]
	if s.uniq.size == 1 then
		if n == [9, 10, 11, 12, 13] then
			return 9, v
		elsif straight == true then
			return 8, v
		else
			return 5, v
		end
	elsif straight == true then
		return 4, v
	end

	n.delete(n[4])
	case n.size
	when 1
		return 7, v
	when 2
		n.delete(n[1])
		case n.size
		when 0
			return 6, v
		when 1
			return 3, v
		end
	when 3
		n.delete(n[2])
		case n.size
		when 0
			return 6, v
		when 1
			return 2, v
		when 2
				n.delete(n[1])
				case n.size
				when 0
					return 2, v
				when 1
					return 1, v
				end
		end
	when 4
		v = n[3]
		n.delete(n[3])
		case n.size
		when 0
			return 7, v
		when 1
			return 3, v
		when 2
			n.delete(n[1])
			case n.size
			when 0
				return 2, v
			when 1
				return 1, v
			end
		when 3
			v = n[2]
			n.delete(n[2])
			case n.size
			when 0
				return 3, v
			when 1
				return 1, v
			when 2
				v = n[1]
				n.delete(n[1])
				case n.size
				when 0
					return 1, v
				when 1
					return 0, nil
				end
			end
		end
	end
end



puts "Answer: #{poker()}"	# Answer: 376
