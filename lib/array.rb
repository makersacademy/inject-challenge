class Array

	def my_inject(arg=0)
		if arg.is_a? Symbol
			 if arg == :+
			 self.my_inject{|start,number|start+number}
			 end
		else
			self.each do |item|
				arg = yield arg , item
			end
			arg
		end
	end



end