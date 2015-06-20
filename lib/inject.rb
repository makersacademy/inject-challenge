class Array

  attr_accessor :index, :result

  def new_inject_sym(startvalue = 'empty', symbol)
    # startvalue.is_a?(Fixnum) ? index = 0 : index = 1
    # result = startvalue if startvalue.is_a?(Fixnum)
    # result = self[0] if self[0].is_a?(Fixnum) && startvalue.is_a?(String)
    set_result(startvalue,symbol)
    while index < self.length
      element = self[index]
      self.result = result.send symbol, element
      self.index += 1
    end
    result
  end

  def set_result(startvalue = "empty", arg2)
    startvalue.is_a?(Fixnum) ? self.index = 0 : self.index = 1
    self.result = startvalue if startvalue.is_a?(Fixnum)
    self.result = self[0] if self[0].is_a?(Fixnum) && startvalue.is_a?(String)
    self.result = self[0] if self[0].is_a?(String)
    p result
    p index
  end





  def new_inject_block(startvalue = "empty", &block)
    # startvalue.is_a?(Fixnum) ? index = 0 : index = 1
    # result = startvalue if startvalue.is_a?(Fixnum)
    # result = self[0] if self[0].is_a?(Fixnum) && startvalue.is_a?(String)
    # result = self[0] if self[0].is_a?(String)
    set_result(startvalue, &block)
    while index < self.length
      element = self[index]
      self.result = block.call(result,element)
      self.index +=1
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
