class Array
  def my_inject starting = 0, *_or_symbol, &_or_block
    accumulator = self[0]
    arr = drop(1)
    arr.each do |element|
      accumulator = yield(accumulator, element)
    end

    if starting != 0
      accumulator = yield(accumulator, starting)
    else
      accumulator
    end
  end
end
