class Array

	def my_inject(argument = 0)
		self.each do |element|
			argument = yield argument, element
		end
		argument
	end

end 