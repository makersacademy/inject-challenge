class Array

	def my_inject(value_initial = self.first)
		
		self.each do |element|
			value_initial = yield(value_initial, element)
		end
		value_initial
	end


end