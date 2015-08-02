class Array
  def injection_method(initial_value = nil) 
    if initial_value == nil
        value = self[0]
        array = self.slice(1..-1)
    else
        value = initial_value
        array = self
    end
    array.each do |element|
      value = yield(value, element)
    end
    value
  end
end

#read and understood a solution found online