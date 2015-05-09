class Array
  def inject_method(arg)
  	array_length = self.length
  	self[0..array_length].each do |n|
  	  arg = yield(arg,n)
    end
    arg
  end
end


#   	# need to use yield to get pull the block from
#   	# up there
# # use proc? ummm block and yield