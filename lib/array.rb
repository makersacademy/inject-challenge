class Array


	def injection(number,operation)
		number.reduce(:+) if "sum"
		number.reduce(1,:*) if "product"
	end

end