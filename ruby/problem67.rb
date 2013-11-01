file = File.new("text/triangle.txt", "r")

triangle = []

while (line = file.gets)
    # puts "#{counter}: #{line}"
    triangle << line.split(" ").map(&:to_i)
end

def largest_path_sum(triangle)

	triangle.each_with_index do |row, i|
		if i != 0 
			row.each_with_index do |num, j|
 				parent1 = triangle[i-1][j-1]
 				parent2 = triangle[i-1][j]

 				max = [parent1,parent2].compact.sort[-1]
 				triangle[i][j] = max + num
			end
		end
	end

	return triangle[-1].sort[-1]

end




puts largest_path_sum(triangle)

