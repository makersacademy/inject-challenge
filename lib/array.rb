class Array
  def fadi(&block)
    element = self.first
    self.shift if self.first == element
    self.each{|n| element = block.call(element,n) }
  end
end
