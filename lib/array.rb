class Array
  #def my_inject(memo = nil)
  #  memo = nil || self.slice!(0)
  #    self.each do |element|
  #    memo = yield memo, element
  #    end
  #  end
  #  p memo
  #end
#end

# self, yield, shift, each, block, slice

#def my_inject(starting_point = nil)
#		if starting_point
#			memo = starting_point #it's memory starts with the starting_point argument
#		else
#			memo = self.shift #this removes the first from the array given and assigns it to memory
#		end

#		self.each do |item| # it iterates through the new array 1 by 1
#			memo = yield memo, item #it runs the given block passing it the memory and the items 1 by 1
#		end
#		memo
#end

  def my_inject(initial=nil, symbol=nil)

    return self.my_inject {|memo,element| memo.send(initial,element )} if initial.class == Symbol
    return self.my_inject(initial) {|memo,element| memo.send(symbol, element)} if symbol.class == Symbol
    self.unshift(initial) if initial != nil
    memo = self[0]
    self[1..-1].each { |item| memo = yield memo, item }
    memo
  end
end
