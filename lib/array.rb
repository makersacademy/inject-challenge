class Array

	def my_inject(arg=0)
		self.each do |item|
			arg = yield arg , item
		end
		arg
	end

end