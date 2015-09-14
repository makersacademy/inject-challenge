class ArrayWrapper

  def initialize(*items)
    @items = items.flatten
  end

  def each(&block)
    @items.each(&block)
    self
  end

  def inject_this(accumulator, &block)
    each do |element|
      accumulator = block.call(accumulator, element)
    end
    accumulator
  end
end

array = ArrayWrapper.new(1, 2, 3, 4,5)

print array.inject_this(0) { |accumulator, element| accumulator + element }
