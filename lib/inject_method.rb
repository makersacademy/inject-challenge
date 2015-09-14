class Array

  def inject_method(result, &block)
    result = result
    self.each do |i|
      result = yield(result, i)
    end
    return result
  end

end
