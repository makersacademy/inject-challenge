class Array
  def my_inject(start)
    sum = start
    each { |num| sum = yield(sum, num) }
    sum
  end
end
