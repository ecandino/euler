=begin
The following iterative sequence is defined for the set of positive integers:

n  n/2 (n is even)
n  3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13  40  20  10  5  16  8  4  2  1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
=end

chains = []
999999.downto 100 do |i|
  x = i
  chain = [x]
  while x != 1 && x > 0 do
    if x % 2 == 0
      x = x / 2
    else
      x = (3*x) + 1
    end
    chain << x
  end
  hash = {number: i, chain_count: chain.count}
  chains << hash
end

chains = chains.sort_by{|c| c[:chain_count] }
p chains.last

# 837799
