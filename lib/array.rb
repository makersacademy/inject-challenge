class Array
  def michael_inject (arg = 'empty', symbol = nil)

    check_arguments arg, symbol

    if arg.instance_of? Symbol
      math_operator = arg.to_proc
    end 

    if symbol.instance_of? Symbol
      math_operator = symbol.to_proc
    end    

    if arg.instance_of? Fixnum
      return michael_inject(arg){|k,v| math_operator.call(k,v) } if symbol.instance_of? Symbol
    end

    return michael_inject{|k,v| math_operator.call(k,v) } if arg.instance_of? Symbol

    if arg == 'empty'
      temp_array = self.slice(1 , self.size - 1)
      total = self[0]
    else
      temp_array = self
      total = arg
    end

    temp_array.each { |i| total = yield([total,i]) }
    total

  end


  private

  attr_accessor :total, :temp_array

  def check_arguments arg, symbol
    raise 'argument error' if (arg.instance_of?(Symbol) && symbol.instance_of?(Symbol))
    raise 'argument error' if (arg.instance_of?(Fixnum) && symbol.instance_of?(Fixnum))
    raise 'argument error' if (arg.instance_of?(Symbol) && symbol.instance_of?(Fixnum))

  end

end
