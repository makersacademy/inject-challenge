class Array

	def my_inject(argument = 0)
		return nil if self == []
		self.each do |element|
			argument = yield argument, element
		end
		return argument
	end

end 