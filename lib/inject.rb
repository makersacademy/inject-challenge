class Array

  attr_accessor :index, :result

  def new_inject(startvalue = 'empty', arg2 = nil, &block)
    if block_given?
      self.new_inject_block(startvalue, &block)
    elsif startvalue.is_a?(Symbol)
      self.new_inject_sym_wo_argument(startvalue)
    else
      self.new_inject_sym(startvalue,arg2)
    end
  end

  def new_inject_sym_wo_argument(symbol)
    set_result(symbol)
    while index < self.length
      element = self[index]
      self.result = result.send symbol, element
      self.index += 1
    end
    result
  end

  def new_inject_sym(startvalue, symbol)
    set_result(startvalue)
    while index < self.length
      element = self[index]
      self.result = result.send symbol, element
      self.index += 1
    end
    result
  end

  def new_inject_block(startvalue = 'empty', &block)
    set_result(startvalue)
    while index < self.length
      element = self[index]
      self.result = block.call(result, element)
      self.index +=1
    end
    result
  end

  def set_result(startvalue)
    startvalue.is_a?(Fixnum) ? self.index = 0 : self.index = 1
    self.result = self[0] if startvalue.is_a?(Symbol)
    self.result = startvalue if startvalue.is_a?(Fixnum)
    self.result = self[0] if self[0].is_a?(Fixnum) && startvalue.is_a?(String)
    self.result = self[0] if self[0].is_a?(String)
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
