=begin
A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=end

sum = 1000
a = 2

while a < sum do
  b = a + 1
  c = sum - a - b 
  while b < c do
    if a**2 + b**2 == c**2
      puts "Winner"; puts a; puts b; puts c
      product = a * b * c
      puts product
      return false
    end
    b += 1
    c = sum - a - b
  end
  if c < a
    break
  end
  a += 1
end

# 31875000

