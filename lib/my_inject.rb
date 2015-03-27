class Array
  def my_inject(accumulator = self[0])
    (1...length).each { |num| accumulator = yield(accumulator, self[num]) }
    accumulator
  end
end
