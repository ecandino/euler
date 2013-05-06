# Fibonacci Numbers
nums = [1,2]
i = 2
while nums.last < 4000000 do
  num = nums[i-1] + nums[i-2]
  i += 1
  nums << num
end
nums.pop
p nums
a = []
nums.each do |i| 
  if i % 2 == 0
    a << i
  end
end
p a
sum = a.reduce(:+)
p sum
# 4613732