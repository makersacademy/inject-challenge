class Array

  def inject_rw(*args, &proc)
    accumulator = self.first
    args.each do |arg|
      accumulator = arg if arg.is_a?(Integer)
      proc = arg.to_proc if arg.is_a?(Symbol)
    end
    self.shift if accumulator == self.first
    self.each do |element|
      accumulator = proc.call(accumulator, element)
    end
    accumulator
  end

end