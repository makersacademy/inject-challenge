class Array

	def another_inject(*args,&block)
		copy_of_self = self.clone

		if args[0].is_a? Symbol
			block = Proc.new { |memo,x| memo.send args[0] , x}
		elsif args.count == 2
			block = Proc.new { |memo,x| memo.send args[1] , x}
			copy_of_self.unshift(args[0])
		elsif args != []
			copy_of_self.unshift(args[0])
		end

		total = copy_of_self[0]
		copy_of_self.shift

		copy_of_self.each do |element|
			total = block.call(total, element)
		end

		total

	end

	def inject_recursion(&block)
		total, *arr = self
		if arr != []
			total = block.call(total, arr[0]) + arr.inject_recursion(&block)
		end
		total #+ block.call(total, arr[0])
	end




end





