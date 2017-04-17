class My_Array < Array

	def challenge first 
		result = first
		self.each {|x| result = yield(x, result)}
		result
	end
end

# Notes for myself:
# In Ruby .each can substitue a loop in a very elegant way
# yield calls a block given after an argument when the method is called. 
# To reopen a class you can use .class_eval or create a new class that 
# inherits everything from the old class. 