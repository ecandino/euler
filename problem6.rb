=begin

The sum of the squares of the first ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

=end
sum = 0
(1).upto(100) do |i|
  sum = sum + (i**2)
end

other_sum = (1..100).to_a.reduce(:+)**2
total = other_sum - sum 

# 25164150