class Array
  def my_inject starting = 0, *_or_symbol, &or_block
    if (starting == :+)
      or_block = proc { |memo, element| memo + element }
    elsif (starting == :*)
      or_block = proc { |memo, element| memo * element }
    end

    if starting == 0 || (starting == :+) || (starting == :*)
      accumulator = self[0]
      arr = drop(1)
    # if or_block.include? (*) || (/) , I want to set starting = 1
    # for my code to work. I tried for hours to get it sorted
    # out with different solutions but as a beginner, am missing
    # the knowledge to solve it.
    else
      accumulator = or_block.call(starting, self[0])
      arr = drop(1)
    end

    arr.each do |element|
      accumulator = or_block.call(accumulator, element)
    end

    if starting == 0 && starting != :+ && starting != :*
      accumulator = or_block.call(accumulator, starting)
    else
      accumulator
    end
  end
end
