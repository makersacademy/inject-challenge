class Array

	def another_inject(*args,&block)
		copy_of_self = self.dup
		p copy_of_self

			#when !(args[0].is_a Symbol)
		
		if args[0].is_a Symbol
				block = Proc.new { |memo,x| memo.send args[0] , x} 
				copy_of_self.shift
		elsif args.count == 2
				block = Proc.new { |memo,x| memo.send args[1] , x} 
				copy_of_self.delete_at(1)
		else
			copy_of_self.unshift(args[0])
		end



		# if args[0].is_a Symbol || args[0].count == 2 
		# 	block = Proc.new { |memo,x| memo.send :+ , x} 
		# 	copy_of_self.shift
		# end
		
		# copy_of_self.unshift(args[0]) if args != [] &
		total = copy_of_self[0]
		p copy_of_self
		copy_of_self.shift

		copy_of_self.each do |element|
		 total = block.call(total, element)
		end 
		total
	end

	def inject_recursion(&block)



	end


end





