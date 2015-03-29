class Array
  def my_inject(arg1 = nil, arg2 = nil)
    sum = with_symbol(arg1) if arg1.is_a? Symbol
    sum = with_symbol_and_init(arg1, arg2) if arg2.is_a? Symbol
    if block_given?
      arg1.nil? ? sum = first && shift : sum = arg1
      each { |num| sum = yield(sum, num) }
    end
    sum
  end

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

# expect([1, 2, 3].my_inject(2, :+)).to eq 8
