class Array
	
	def my_inject(accumulator = nil, operation = nil, &block)
		if accumulator.nil? && operation.nil? && block.nil?
			raise ArgumentError, "Please provide either an operation or a block"
		end

		if operation && block
			raise ArgumentError, "Please provide either an operation symbol or a block, not both"
		end

		if operation.nil? && block.nil?
			operation = accumulator
			accumulator = nil
		end

		block = case operation
			when Symbol
				lambda { |accumulator, value| accumulator.send(operation, value) }
			when nil
				block
			else
				raise ArgumentError, "The operation provided must be a symbol"
		end

		if accumulator.nil?
			ignore_first = true
			accumulator = first
		end

		index = 0
			
		each do |element|
			unless ignore_first && index == 0
				accumulator = block.call(accumulator, element)
			end
			index += 1
		end
		accumulator
  end
end