class Array

  def christian_inject (input = 0, &equation)
    self.each do |item|
      input = equation.call(input,item)
    end
      input
  end
  
end