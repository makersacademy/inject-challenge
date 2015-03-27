
class Array
  def my_inject(arg = nil, arg_sym = nil, &block)
    if arg.nil?
      my_inject_without_arg(&block)
    else
      if arg.is_a?(Symbol)
        my_inject_with_symbol(arg)
      else
        if arg && arg_sym
          my_inject_with_arg_and_symbol(arg, arg_sym, &block)
        else
          my_inject_with_arg(arg, &block)
        end
      end
    end
  end

  def my_inject_with_arg(arg)
    result = arg
    each { |value| result = yield(result, value) }
    result
  end

  def my_inject_without_arg
    result = self[0]
    self[1..-1].each { |value| result = yield(result, value) }
    result
  end

  def my_inject_with_symbol(arg_is_sym)
    result = self[0]
    self[1..-1].each { |value| result = result.send(arg_is_sym, value) }
    result
  end

  def my_inject_with_arg_and_symbol(arg, arg_sym)
    result = arg
    each { |value| result = result.send(arg_sym, value) }
    result
  end
end
