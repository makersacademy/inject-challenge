class Array
  def my_inject starting = 0, *_or_symbol, &_or_block
    if (starting == :+ )
    _or_block = Proc.new{ |memo, element| memo + element }
    p _or_block
     # undefined method call for nilclass
    end

    accumulator = self[0]
    arr = drop(1)
    arr.each do |element|
      accumulator = _or_block.call(accumulator, element)
    end

    if starting != 0 && starting != :+
      accumulator = _or_block.call(accumulator, starting)
    else
      accumulator
    end
  end
end
