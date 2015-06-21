require 'pry'

module Inject

	def new_inject object = 0, &block
		
		c = 0

		until c == self.size
			
			object = yield( [object, self[ c ] ])
			c += 1
		end
		object

	end


end

class Array
	include Inject
end