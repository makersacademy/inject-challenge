class Array
  def my_inject arg = false, arg_sym = false, &block
    arr = self

    if arg_sym
      total = arg
      arr.each { |el| total =  total.method(arg_sym).call(el) }
    else
      case arg
      when Symbol
        total = arr.shift
        arr.each { |el| total =  total.method(arg).call(el) }
      else
        arg ? total = arg : total = arr.shift
        arr.each { |el| total = block.call(total, el) }
      end
    end
    total
  end
end