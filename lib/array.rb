class Array

  def my_inject &block
      start = self.shift
      self.each do |x|
        start = yield(start, x)
      end
    start
  end

end
