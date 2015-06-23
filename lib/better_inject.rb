class Array
  include Enumerable
  def jack_inject(input = self.first, &method)
    if input == self.first
      self.shift
    end
    self.each do |x|
      input = method.call(input, x)
    end
    input
  end
end
