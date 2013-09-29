=begin

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

=end

class Integer
  def smallest_multiple? nums
    nums.each do |i|
      if self % i != 0
        return false  
      end
    end
    return true
  end
end

nums = (2..20).to_a.reverse

0.upto(nums.count-1) do |x|
  sample = nums[0..x]
  high = nums[0]
  (high).step(10000000000,high) do |y|
    if y.smallest_multiple? sample
      high = y
      break
    end
  end
  
  p high; p nums[x]
end

