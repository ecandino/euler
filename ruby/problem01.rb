# 3's and 5's

numbers = (1..999).to_a
good = []
numbers.each do |i|
  i % 5 == 0 || i % 3 == 0 ? good << i : ""
end
sum = good.reduce(:+)
# 233168
