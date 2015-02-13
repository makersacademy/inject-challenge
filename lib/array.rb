class Array

	def my_inject(arg)
		return self.first if self.empty?
		self.each do |item|
			arg = yield arg , item
		end
		arg
	end

end