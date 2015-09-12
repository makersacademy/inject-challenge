class Array

  def zhivko_inject(symbol_or_value = nil)
    case symbol_or_value
    when Symbol
      return zhivko_inject { |method, param| method.send(symbol_or_value, param) }
    when symbol_or_value.nil?
      result = nil
    else
      result = symbol_or_value
    end

    self.each do |element|
      if result.nil?
        result = element
      else
        result = yield(result, element)
      end
    end
    result
  end
  
end
