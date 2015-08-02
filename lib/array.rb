class Array
	
	def new_inject(arg=self[0], &block)
		self.shift if arg == self[0]
		self.each { |element| arg = yield(arg, element) }
		arg
	end

end
