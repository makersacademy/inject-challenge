class ArrayWrapper

  def initialize(*items)
  @items = items.flatten
  end

  def each(&block)
  @items.each(&block)
  self
  end

  def ==(other)
  @items == other
  end

  def inject_new(accumulator, &block)
  each do |element|
    accumulator = block.call(accumulator, element)
  end
  accumulator
  end

end

array = [1,2,3,4]

print array.inject_new(0) { |accumulator, element| accumulator + element }
