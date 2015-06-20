class Array

  def new_inject(initial_value = self.first, &block)
    if initial_value == self.first then self.shift
    end
    self.each do |e|
      initial_value = block.call(initial_value, e)
    end
    initial_value
  end

end
