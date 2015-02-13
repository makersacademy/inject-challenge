class Array

	def inject_sum
		array = [1,2,3,4,5]
		sum = 0
		array.each { |x| sum += x }
		sum
	end

end