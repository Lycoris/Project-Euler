# https://projecteuler.net/problem=89
#
#

def save_letter
  ans = 0
  open("roman.txt") {|f|
    f.each {|line|
      ans += refine(line)
    }
  }
  return ans
end


def refine(l)
  s = 0
  if l.chomp.include?("DCCCC") then
    s += 3
  elsif l.chomp.include?("CCCC") then
    s += 2
  end
  if l.chomp.include?("LXXXX") then
    s += 3
  elsif l.chomp.include?("XXXX") then
    s += 2
  end
  if l.chomp.include?("VIIII") then
    s += 3
  elsif l.chomp.include?("IIII") then
    s += 2
  end
  return s
end


  puts "Answer: #{save_letter}"   # Answer: 743
