=begin
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
Find the sum of all the primes below two million.
=end


class Integer < Numeric
  
  def is_prime?
    if self <2
      return false
    elsif self < 4
      return true
    elsif self % 2 == 0
      return false
    elsif self < 9
      return true
    elsif self % 3 == 0
      return false
    else
      r = (self**0.5).floor
      f = 5
      f.step r,6 do |g|
        if self % g == 0
          return false
        end
        if self % (g + 2) == 0
          return false
        end
      end
      return true
    end
  end
end

max = 2000000
primes = []

2.upto max do |i|
  if i.is_prime?
    primes << i
  end
end

sum = primes.reduce(:+)
p sum

# 142913828922
