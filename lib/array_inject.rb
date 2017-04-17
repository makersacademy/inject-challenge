class SubclassArray < Array

	def injecting (array,sum)
		array.each do |num|
			sum = num + sum
		end 
		sum
	end
end 

