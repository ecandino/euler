=begin
You are given the following information, but you may prefer to do some research for yourself.

1 Jan 1900 was a Monday.
Thirty days has September,
April, June and November.
All the rest have thirty-one,
Saving February alone,
Which has twenty-eight, rain or shine.
And on leap years, twenty-nine.
A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

=end


# Note this is totally cheating with ruby's date library
# Redo without it

require 'date'


def find_sunday_count
	sunday_count = 0
	1901.upto(2000) do |year|

		1.upto(12) do |month|

			date = Date.new(year, month, 1)

			if date.wday == 0
				sunday_count = sunday_count + 1
			end

		end
	end
	return sunday_count
end

puts find_sunday_count()