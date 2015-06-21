class Array

	def injection &block
    array = self.dup
    accumulator = array.shift
    if block_given?
      array.each do |element|
        accumulator = yield accumulator, element
      end
      accumulator
    end
  end
end