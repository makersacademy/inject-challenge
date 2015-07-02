class Array

  def christian_inject (input = self.first, &equation)
    if input == self.first
      self.shift
    end
    self.each do |item|
      input = equation.call(input, item)
    end
      input
  end

end