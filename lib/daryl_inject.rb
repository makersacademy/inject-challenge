class Array

  def daryl_inject(default = self.first, &block)

  sum = default
  if sum == self.first
    self.shift
  end
  self.each do |x|
    sum = block.call(sum, x)
  end

  sum

  end
end
