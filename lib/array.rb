class Array
  #def my_inject(memo = nil)
  #  memo = nil || self.slice!(0)
      # the slice!() method Deletes the element(s) given by an index
      # (optionally up to length elements) or by a range.
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
#			memo = yield memo, item
#		end
#		memo
#end

  def my_inject(initial=nil, symbol=nil)

    if initial.class == Symbol
      return self.my_inject {|memory,element| memory.send(initial,element )}
    end
     # .send() invokes the method identified by symbol,
     # passing it any arguments specified.
    if symbol.class == Symbol
      return self.my_inject(initial) {|memory,element| memory.send(symbol, element)}
    end

    if initial != nil
      self.unshift(initial)
      # .unshift() adds one or more elements to the beginning
      # of an array and returns the new length of the array.
    end

    memory = self[0]
    self[1..-1].each { |item| memory = yield memory, item }
      # .each {} calls the given block once for each element in self,
      # passing that element as a parameter.

      # yield runs the given block passing it the memory and the items 1 by 1
    memory
  end
end
