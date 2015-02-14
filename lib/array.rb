class Array

	def my_inject(arg=0)
		self.each do |item|
			arg = yield arg , item
		end
		arg
	end

	def my_inject_input_array_is_empty
		return self.first if self.empty?
	end

end