class Array

  def new_inject (a=self.shift, &block)
    self.each do |element|
      a = block.call(a, element)
    end
    p a
  end
end