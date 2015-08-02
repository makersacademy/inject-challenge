class Array
	def new_inject(arg, &block)
		self.each do |element|
			arg = yield(arg, element)
		end
		arg
	end
end
