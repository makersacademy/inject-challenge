class ModifiedArray < Array

  def shoot accumulator=0
    if block_given?
      size.times { |i| accumulator = yield accumulator, self[i] }
    else
      operand = accumulator
      accumulator = 0 # problem with multiplication when 0 innit
      self.each { |i| accumulator = accumulator.send operand, i }
    end
    accumulator
  end

end
