class Array
  def my_inject _starting = 0, *_or_symbol, &_or_block
    accumulator = self[0]
    arr = drop(1)
    arr.each do |element|
      accumulator = _or_block.call(accumulator, element)
    end
    accumulator
  end
end
