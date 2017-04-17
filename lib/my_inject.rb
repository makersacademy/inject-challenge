class Array
  def my_inject(starting_value = nil)
    if starting_value == nil
      value = self[0]
      array = self.slice(1..-1)
    else
      value = starting_value
      array = self
    end
    array.each do |element|
      value = yield(value, element)
    end
    value
  end
end
