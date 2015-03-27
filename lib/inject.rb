class Array

	def inject_method(array)
		each do |element|
			array = yield array, element
		end
		p array
	end

end