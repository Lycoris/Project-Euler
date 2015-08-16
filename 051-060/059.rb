# http://projecteuler.net/problem=59
#
#


def XOR_decryption(file)
	code = open(file){|f| f.read}.split(",")
	code_group1 = Array.new
	code_group2 = Array.new
	code_group3 = Array.new
	xor = Array.new(3)
	code.each_index {|i|
		case (i + 1) % 3
		when 1
			code_group1 = code_group1 + [code[i].to_i]
		when 2
			code_group2 = code_group2 + [code[i].to_i]
		when 0
			code_group3 = code_group3 + [code[i].to_i]
		end
	}
	max = Array.new
	max[0] = code_group1.max_by {|value| code_group1.count(value)}
	max[1] = code_group2.max_by {|value| code_group2.count(value)}
	max[2] = code_group3.max_by {|value| code_group3.count(value)}
	for i in 0..2
		for j in 97..122
			if max[i] ^ j == 32
				xor[i] = j
				break
			end
		end
	end
	decode = ""
	answer = 0
	code.each_index {|i|
		case (i + 1) % 3
		when 1
			decode = decode + (code_group1[(i + 1) / 3] ^ xor[0]).chr
			answer = answer + (code_group1[(i + 1) / 3] ^ xor[0])
		when 2
			decode = decode + (code_group2[(i + 1) / 3] ^ xor[1]).chr
			answer = answer + (code_group2[(i + 1) / 3] ^ xor[1])
		when 0
			decode = decode + (code_group3[((i + 1) / 3) - 1] ^ xor[2]).chr
			answer = answer + (code_group3[((i + 1) / 3) - 1] ^ xor[2])
		end
	}
	p decode
	# "(The Gospel of John, chapter 1) 
	# 1 In the beginning the Word already existed. He was with God, and he was God. 
	# 2 He was in the beginning with God. 
	# 3 He created everything there is. Nothing exists that he didn't make. 
	# 4 Life itself was in him, and this life gives light to everyone. 
	# 5 The light shines through the darkness, and the darkness can never extinguish it. 
	# 6 God sent John the Baptist 
	# 7 to tell everyone about the light so that everyone might believe because of his testimony. 
	# 8 John himself was not the light; he was only a witness to the light. 
	# 9 The one who is the true light, who gives light to everyone, was going to come into the world. 
	# 10 But although the world was made through him, the world didn't recognize him when he came. 
	# 11 Even in his own land and among his own people, he was not accepted. 
	# 12 But to all who believed him and accepted him, he gave the right to become children of God. 
	# 13 They are reborn! This is not a physical birth resulting from human passion or plan, this rebirth comes from God.
	# 14 So the Word became human and lived here on earth among us. He was full of unfailing love and faithfulness. And we have seen his glory, the glory of the only Son of the Father."
	return answer
end



puts "Answer: #{XOR_decryption("cipher1.txt")}"		# Answer: 107359
