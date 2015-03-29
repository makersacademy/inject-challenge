class Array
  def my_inject(arg1 = nil, arg2 = nil)
    return with_symbol(arg1) if arg1.is_a? Symbol
    return with_symbol_and_init(arg1, arg2) if arg2.is_a? Symbol
    if block_given?
      arg1.nil? ? sum = first && shift : sum = arg1
      each { |num| sum = yield(sum, num) }
    end
    sum
  end
  ####
  # would like to put the if block_given? block into a seperate method
  # Tried passing a block so that I can pass it to a different method
  # but couldn't seem to get it to work.Moved on as short of time Advise please!
  #####
  def with_symbol(arg)
    sum = shift
    each { |num| sum = sum.send(arg, num) }
    sum
  end

  def with_symbol_and_init(arg1, arg2)
    sum = arg1
    each { |num| sum = sum.send(arg2, num) }
    sum
  end
end
