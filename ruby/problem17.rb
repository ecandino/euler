=begin
If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

=end

def to_word(num)
	number_to_word = Hash["0", "", "1", "one", "2", "two", "3", "three", "4", "four", "5", "five", "6", "six", "7", "seven", "8", "eight", "9", "nine", "10", "ten", "11", "eleven", "12", "twelve", "13", "thirteen", "14", "fourteen", "15", "fifteen", "16", "sixteen", "17", "seventeen", "18", "eighteen", "19", "nineteen", "20", "twenty", "30", "thirty", "40", "forty", "50", "fifty", "60", "sixty", "70", "seventy", "80", "eighty", "90", "ninety", "100", "hundred", "1000", "onethousand"]

	num_string = num.to_s
	word = []
	array = num_string.reverse.split("")
	last_two = array.take(2).reverse.join("").to_i

	if last_two > 0 && last_two < 20
		word << number_to_word[last_two.to_s]
	else
		word << number_to_word[array[0]]
		word << number_to_word[array[1]+"0"]
	end

	if array.length == 3
		word << number_to_word[array[2]] + "hundred" 
		word << "and" unless last_two == 0
	elsif num_string.length == 4
		word << number_to_word["1000"]
	end
	word.join("")
		
end

def number_letter_counts(max)
	1.upto(max).map{|i| to_word(i).length }.reduce{|sum, x| sum + x }

end







puts number_letter_counts(5)
puts number_letter_counts(1000)

