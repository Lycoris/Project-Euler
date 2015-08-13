# http://projecteuler.net/problem=500
#
#

require 'prime'

def problem_500(n)
  a = 0
  answer = 1
  f = false
  seq = Array.new
  Prime.each {|pr|
    seq << [pr, 1]
    a += 1
    break if a == n
  }
  seq.each_index {|i|
    if seq[-1][0] > seq[i][0] ** (seq[i][1] + 1) then
      seq -= [seq[-1]]
      seq[i][1] += seq[i][1] + 1
      redo
    elsif seq[i][1] == 1 then
      puts seq.size
      seq.each {|pr| answer *= pr[0] ** pr[1]}
      return answer % 500500507
    end
  }
end



puts "Answer: #{problem_500(500500)}"   # Answer: 35407281
