class Array
  def my_inject(arg = nil, arg_sym = nil)
    arg.nil? || arg.is_a?(Symbol) ? result = shift : result = arg
    if arg.is_a?(Symbol)
      each { |value| result = result.send(arg, value) }
    elsif arg && arg_sym
      each { |value| result = result.send(arg_sym, value) }
    else
      each { |value| result = yield(result, value) }
    end
    result
  end
end
