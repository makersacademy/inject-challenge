class Array

	def update_with(array)
		each do |element| 
			array = yield array,element
		end
		p array
	end


end