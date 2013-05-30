=begin
 Starting in the top left corner of a 2x2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
  
  How many such routes are there through a 20x20 grid? 

  See Pascals triangle and binomial coefficients


=end
class Integer
  def factorial
    f = 1; for i in 1..self; f *= i; end; f
  end
end

puts 40.factorial / (20.factorial * 20.factorial)


# 137846528820