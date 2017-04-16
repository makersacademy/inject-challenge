class Array

  def mapper(&block)
    self.each_with_index do |num, index|
      self[index] = yield(num) 
    end
  end

  def new_inject(&block)
    x = self.first
    self[1..-1].each do |y|
    p  x = yield(x,y)
    end
    x
  end
end
