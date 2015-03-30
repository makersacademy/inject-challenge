class Array
  def my_inject(arg = nil, arg_sym = nil)
    arg.nil? || arg.is_a?(Symbol) ? result = shift : result = arg
    if arg.is_a?(Symbol)
      each { |value| result = result.send(arg, value) }
      result
    elsif arg && arg_sym
      each { |value| result = result.send(arg_sym, value) }
      result
    else
      each { |value| result = yield(result, value) }
      result
    end
  end
end
