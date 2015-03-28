class Array
  def my_inject(start = nil)
    start.nil? ? sum = first && shift : sum = start
    # sum = start
    # shift if start.nil?
    each { |num| sum = yield(sum, num) }
    sum
  end
end
