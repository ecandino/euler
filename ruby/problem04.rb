=begin
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end

class Integer

  def is_palidrome?
    string = self.to_s
    length = string.length
    if length.odd? 
      return false 
    end
    split = (length / 2) - 1
    front = string.slice(0..split)
    back = string.slice((split+1)..length)
    front == back.reverse ? true : false
  end

end

drones = []
(999).downto(101) do |x|
  
  (x-1).downto(100) do |y|
    product = x * y
    if product.is_palidrome?
      true
      drones << product
    end
  end
end

p drones.sort.last

# 906609