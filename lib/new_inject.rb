
module New_inject

	def new_inject memory = 0, &block

		if block_given?

			each do |el|
				memory = yield( memory, el )
			end

		elsif memory == :+
			accum = 0

			each do |el| 
				accum += el
			end

		elsif memory == :-
			accum = 0

			each do |el| 
				accum -= el
			end
		end

	 	# else
	 	# 	accum = memory

	 	# 	each do |el|
	 	# 		accum += el
	 	# 	end
	 	# end

		accum || memory
	end

end



