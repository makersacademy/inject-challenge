class Array

  def inject_rw(accumulator = self.first, &proc)
    self.shift if accumulator == self.first
    self.each do |element|
      accumulator = proc.call(accumulator, element)
    end
    accumulator
  end

end