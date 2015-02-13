class Array

	def reinject(*args,&block)
		self.unshift(args[0]) if args != []
		total = self[0]
		self.shift
		self.each do |element|
		 total = block.call(total, element)
		end
		total
	end

end





