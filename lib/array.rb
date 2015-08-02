class Array
	def new_inject(arg=self[0], &block)
		self.shift if arg == self[0]
		self.each do |element|
			arg = yield(arg, element)
		end
		arg
	end
end
