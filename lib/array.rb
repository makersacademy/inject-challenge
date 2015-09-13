class Array

  def my_inject_method(result, &block)
    result = result
    self.each do |element|
      result = yield(result, element)
    end
    result
  end
end
