#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

	multiple = 20
	y = multiple
	hash = Hash.new(0)
	
	loop do
		if hash.has_value?(multiple) || y == 0
			break
		end
		for x in 1..multiple do
			if y % x == 0
				hash[y] += 1
			end
		end
		y += multiple
	end
	
	puts "Smallest number = #{y - multiple}"
	hash.has_value?(multiple)