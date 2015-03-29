class Array
  def my_inject(initial = nil, symbol = nil)
    if symbol.kind_of? Symbol
      return my_inject(initial) {|memory, element| memory.send(symbol, element)}
      # .send() invokes the method identified by symbol,
      # passing it any arguments specified.
    elsif !initial.nil?
      unshift(initial)
      # .unshift() adds one or more elements to the beginning
      # of an array and returns the new length of the array.
    end

    memory = self[0]

    self[1..-1].each do |element|
      # .each calls the given block once for each element in self,
      # passing that element as a parameter.
      memory = yield memory, element
      # yield runs the given block passing it the memory and the items 1 by 1
    end
    p memory
  end
end
