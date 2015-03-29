class Array
  def my_inject arg = false, arg_sym = false, &block
    @arr = self
    what_are_my_arguments arg, arg_sym
    total = @start
    if @sym
      @arr.each { |el| total =  total.method(@sym).call(el) }
    else
      @arr.each { |el| total = block.call(total, el) }
    end
    total
  end

  def what_are_my_arguments arg, arg_sym
    if arg_sym.is_a? Symbol
      i_has_two arg, arg_sym
    else
      if arg.is_a? Symbol
        i_has_just_a_symbol arg
      else
        arg ? @start = arg : @start = @arr.shift
      end
    end
  end

  def i_has_two arg, arg_sym
    @start = arg
    @sym = arg_sym
  end

  def i_has_just_a_symbol arg
    @sym = arg
    @start = @arr.shift
  end
end
