class Array

	def my_inject(arg=0)
		if arg.is_a? Symbol
			 proc = arg.to_proc
			 self.my_inject(&proc)
		else
			self.each do |item|
				arg = yield arg , item
			end
			arg
		end
	end



end