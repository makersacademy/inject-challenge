class Array

  def double_inject(initial=nil, &block)
    array = []
    each { |el| array << el }
    if initial
      i = 1
      new = block.call(initial, array[0])
      while i < array.length
        new = block.call(new, array[i])
        i += 1
      end
    else
      initial = array[0]
      i = 1
      new = block.call(initial, array[i])
      while i + 1 < array.length
        new = block.call(new, array[i + 1])
        i += 1
      end
    end
    new
  end
end
