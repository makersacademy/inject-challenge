class Array

  def double_inject(initial, &block)
    array = []
    each do |el|
      array << el
    end
    i = 1
    new = block.call(initial, array[0])
    while i < array.length
      new = block.call(new, array[i])
      i += 1
    end
    new
  end
end
