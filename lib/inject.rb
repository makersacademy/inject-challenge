class Array

	def sebastien_injection(a= nil, b=nil)
		injectme = a ? b : self.shift
		self.map {|x| injectme = yield(injectme , x)}
		return injectme	
	end
end
