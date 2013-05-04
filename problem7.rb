=begin
  
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10,001st prime number?
  
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

x = 0
i = 0
primes = []
while i < 10002 do 
  if x.is_prime?
    primes << x
    i += 1
  end
  x += 1
end
primes[10000]

# 104743