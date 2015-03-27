class Array
  def my_inject
    sum = self[0]
    (1...length).each { |num| sum = yield(sum, self[num]) }
    sum
  end
end
