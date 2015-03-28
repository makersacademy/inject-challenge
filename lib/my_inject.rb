class Array
  def my_inject starting = 0, *_or_symbol, &or_block
    if (starting == :+)
      or_block = proc { |memo, element| memo + element }
    elsif (starting == :*)
      or_block = proc { |memo, element| memo * element }
    end

    accumulator = self[0]
    arr = drop(1)
    arr.each do |element|
      accumulator = or_block.call(accumulator, element)
    end

    if starting != 0 && starting != :+ && starting != :*
      accumulator = or_block.call(accumulator, starting)
    else
      accumulator
    end
  end
end
