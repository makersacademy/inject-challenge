class Array

  def method_missing(method, setter = 0, &block)
    super if method != :my_inject
    setter != 0 ? (self.unshift(setter).my_injection &block) : (self.my_injection &block)
  end

  def my_injection &block
    return self[0] unless self.count > 1
    self[1] = yield(self[0], self[1])
    self[1..-1].my_injection &block
  end
end



