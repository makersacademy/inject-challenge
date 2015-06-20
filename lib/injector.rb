class Array

  def injector &lambda
  	len = self.length - 1
    result = self[0]
    (1..len).each do |x|
	  result = yield result, self[x]
	end
	result
  end
end
