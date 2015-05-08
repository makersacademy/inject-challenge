class Array

  def daryl_inject(default = self.first, &block)

    return default if self.length == 1
    self.shift if default == self.first
    self.each { |x| default = block.call(default, x) }
    default

  end

  def daryl_inject2(result = self.first, &block)

      return 0 if self.length == 0
      result = self.pop + self.daryl_inject2(&block)

  end

end