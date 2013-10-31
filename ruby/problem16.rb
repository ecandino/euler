=begin
2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^1000?

=end

def power_sum(base, exp)
	total = base ** exp
	a = total.to_s.split("")
	a.map!{|i| i.to_i }.reduce{ |sum, i| sum + i }
end

puts power_sum(2,15)
puts power_sum(2,1000)