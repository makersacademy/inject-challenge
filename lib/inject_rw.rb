class Array

  def inject_rw(*args, &proc)
    accumulator = self.first
    args.each do |arg|
      arg.is_a?(Integer) ? accumulator = arg : proc = arg.to_proc
    end
    self.shift if accumulator == self.first
    self.each { |element| accumulator = proc.call(accumulator, element) }
    accumulator
  end

end