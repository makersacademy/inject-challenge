class Array

  def daryl_inject(default = self.first, &block)

    self.shift if default == self.first
    self.each { |x| default = block.call(default, x) }
    default

  end
end
