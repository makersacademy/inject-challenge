class Array

  def daryl_inject(result = self.first, &block)
    return result if self.length == 1
    self.shift if result == self.first
    self.each { |x| result = block.call(result, x) }
    result
  end

  def daryl_inject2(result = self.first, &block)
    return 0 if self.length == 0
    result = self.pop + self.daryl_inject2(&block)
  end

end