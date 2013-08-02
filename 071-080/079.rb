# http://projecteuler.net/problem=79
#
#


def Passcode_derivation(keylog)
	f = open(keylog)
	log = f.read.split(/\n/)
	log.each_index{|i| log[i] = log[i].split(//)}
	log = log.transpose
	frequency = Array.new(3)
	3.times {|i|
		frequency[i] = {}
		frequency[i].default = 0
	}
	passcode = ""
	log.each_index {|try|
		log[try].each_index {|col|
			frequency[try][log[try][col]] += 1
		}
	}
	until frequency[0].size == 1
		frequency[0].each_key {|k|
			if frequency[1][k] == 0 and frequency[2][k] == 0 then
				passcode += k
				p passcode
				frequency = Array.new(3)
				3.times {|i|
					frequency[i] = {}
					frequency[i].default = 0
				}
				log.each_index {|try|
					log[try].each_index {|col|
						if log[try][col] == k then
							case try
							when 0
								log[try][col] = log[try + 1][col]
								log[try + 1][col] = log[try + 2][col]
								log[try + 2][col] = nil
							when 1
								log[try][col] = log[try + 1][col]
								log[try + 1][col] = nil
							when 2
								log[try][col] = nil
							end
						end
					}
				}
				log.each_index {|try|
					log[try].each_index {|col|
						frequency[try][log[try][col]] += 1
					}
				}
				break
			end
		}
	end
	return passcode
end

	puts "Answer: #{Passcode_derivation("keylog.txt")}"		# Answer: 73162890
