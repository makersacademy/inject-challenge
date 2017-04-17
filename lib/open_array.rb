class Array

  def method_missing(method, setter = String.new, &block)
    super if method != :my_inject
    setter != String.new ? (self.unshift(setter).my_injection &block) : (self.my_injection &block)
  end

  def my_injection &block
    return self[0] unless self.count > 1
    self[1] = block.call(self[0], self[1])
    self[1..-1].my_injection &block
  end
end

