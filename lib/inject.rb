class Array


  def new_inject_sym(startvalue = 'empty', symbol)
    index = 0
    result = startvalue if startvalue.is_a?(Fixnum)
    result = 0 if self[0].is_a?(Fixnum) && startvalue.is_a?(String)
    while index < self.length
      element = self[index]
      result = result.send symbol, element
      index += 1
    end
    result
  end

  # def set_result(startvalue = "empty", arg2)
  #   index = 0
  #   result = startvalue if startvalue.is_a?(Fixnum)
  #   result = 0 if self[0].is_a?(Fixnum) && startvalue.is_a?(String)
  #   result = self[0] if self[0].is_a?(String)
  # end





  def new_inject_block(startvalue = "empty", &block)
    index = 0
    result = startvalue if startvalue.is_a?(Fixnum)
    result = 0 if self[0].is_a?(Fixnum) && startvalue.is_a?(String)
    result = self[0] if self[0].is_a?(String)
    while index < self.length
      element = self[index]
      result = block.call(result,element)
      index +=1
    end
    result
  end

  #
  # def new_inject_yield(argument)
  #   index = 0
  #   result = startvalue
  #   element = self[index]
  #   while index <= self.length
  #     result = yield(result,element)
  #     index +=1
  #   end
  #   result
  # end
  #


end
