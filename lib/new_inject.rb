class Array

  def new_inject(arg, &block)
    result = arg
    self.each do |element|
      result = block.call(result, element)
    end
    result
  end

end
