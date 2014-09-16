# http://projecteuler.net/problem=76
#
#


def p(k, n)
  @p ||= Array.new(101).map{Array.new(101, nil)}
	if k > n then
    @p[k][n] ||= 0
	elsif k == n then
    @p[k][n] ||= 1
	else
    @p[k + 1][n] ||= p(k + 1, n)
    @p[k][n - k] ||= p(k, n - k)
    @p[k][n] ||= @p[k + 1][n] + @p[k][n - k]
	end
  return @p[k][n]
end


	puts "Answer: #{p(1, 100) - 1}"		# Answer: 190569291
