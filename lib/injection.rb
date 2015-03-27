class Injection


	def number
		@number ||= []
	end


	def add(number)
		number.reduce(:+)
	end
	

	def multiply(number)
		number.reduce(1,:*)
	end


end