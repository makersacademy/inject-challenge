class Array
  def my_inject(acc = self.first, &block)
      self.shift if acc == self.first
      self.each do |e|
        acc = block.call(acc, e)
      end
      p acc
  end
end