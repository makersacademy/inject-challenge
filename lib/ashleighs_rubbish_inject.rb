class Array
  def inject_method(arg)
  	self.each_with_index do |n,i|
  	  arg = yield(n,i)
  end
  arg
end
end


#   	# need to use yield to get pull the block from
#   	# up there
# # use proc? ummm block and yield