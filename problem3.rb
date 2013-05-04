# Largest Prime Factor
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143

total = 600851475143
b_factors = []
factors = []
sqrt = Math.sqrt(total)
top = sqrt.floor

(2..top).each do |i|
  if total % i == 0
    b_factors << i
  end
end
b_factors.each do |i|
  x = total / i
  factors << i
  factors << x
end
factors = factors.sort.reverse
p factors

class Integer < Numeric
  # def is_prime?
  #   return false if self < 2    
  #   (self-1).downto(2) do |i|
  #    if (self % i) == 0
  #     return false
  #    end
  #   end

  #   true
  #  end

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

factors.each do |i| 
  if i.is_prime?
    puts i
    return false
  end
end

