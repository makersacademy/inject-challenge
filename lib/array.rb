class Inject < Array

	def innjecct(array, array_inject)
		array.each do |x|
			array_inject = array_inject + x
		end
		array_inject
	end

end