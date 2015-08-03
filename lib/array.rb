class Array
  def fadi(element = self.shift, &block)
    self.each{|n| element = block.call(element,n) }
    p element
  end
end
