class Array

	def my_inject(argument)
		self.each do |element|
			argument = yield argument, element
		end
		argument
	end

end 