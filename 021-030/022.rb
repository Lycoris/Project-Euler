# http://projecteuler.net/problem=22
#
#


def name_score(file)
  ans = 0
  s = [("A".."Z").to_a, (1..26).to_a].transpose
  s = Hash[*s.flatten]
  f = open(file).read.delete('"').split(",").sort
  f.each_index {|i|
    score = 0
    f[i].split(//).each {|l| score += s[l]}
    ans += score * (i + 1)
  }
  return ans
end


puts "Answer: #{name_score("name.txt")}"    # Answer: 871198282
