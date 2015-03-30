class Array
  def my_inject(arg = nil, arg_sym = nil)
    arg.nil? || arg.is_a?(Symbol) ? result = self[0] : result = arg
    if arg.nil?
      self[1..-1].each { |value| result = yield(result, value) }
      result
    else
      if arg.is_a?(Symbol)
        self[1..-1].each { |value| result = result.send(arg, value) }
        result
      else
        if arg && arg_sym
          each { |value| result = result.send(arg_sym, value) }
          result
        else
          each { |value| result = yield(result, value) }
          result
        end
      end
    end
  end
end
