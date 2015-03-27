class Array

	def my_inject(initial_value, &block)
		result = initial_value
		self.each {|item| result = block.call(result, item)}
		
		result
	end

end

[9,6,3].my_inject(0){|memo, item| memo= memo + item}








# def inject(array)
# 	sum = 0
# 	firstelement = array[0]
# 	rest =  array.drop(1)
# 	p rest
# 	p firstelement

# 	new_array = rest.reduce(:+)

# 	puts new_array

# end




# def injection(array)
	
# 	element, *rest = array
	
# 	case rest	
# 	when []
# 		element
# 	else
# 		element + injection(rest)
# 	end
# end

# # puts injection([1,2,3,4,5])
# inject([1,2,3,4])