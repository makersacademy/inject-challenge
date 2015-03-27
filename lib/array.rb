
class Array
  def my_inject(arg = nil, arg_sym = nil)
    arg.nil? || arg.is_a?(Symbol) ? result = self[0] : result = arg
    if arg.nil? # inject without any args
      self[1..-1].each { |value| result = yield(result, value) }
      result
    else
      if arg.is_a?(Symbol) # inject with symbol
        self[1..-1].each { |value| result = result.send(arg, value) }
        result
      else
        if arg && arg_sym # inject with arg and symbol
          each { |value| result = result.send(arg_sym, value) }
          result
        else # inject with arg starting point
          each { |value| result = yield(result, value) }
          result
        end
      end
    end
  end
end
