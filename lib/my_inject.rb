class Array
  def my_inject(result, &block)
    result = result
    self.each do |element|
      result = block.call(result, element)
    end
    result
  end
end