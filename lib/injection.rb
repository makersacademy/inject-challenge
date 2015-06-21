class Array

	def injection *args
    array = self.dup
    accumulator = array.shift
    if block_given?
      array.each {|element| accumulator = yield accumulator, element}
      accumulator
    else
      array.each {|element| accumulator = accumulator.send args[0], element}
      accumulator
    end
  end
end