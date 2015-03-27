class Array

  def not_inject(array = 0)
    result = array
    self.each do |element|
      result = yield(element, result)
    end
    result
  end
end
