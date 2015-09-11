class Array

  def mick_inject(initial = nil, &block)
    if !initial
      initial = self[0]
      shift
      mick_inject(initial, &block)
    else
      accumulator = initial
      each do |a|
        accumulator = block.call(accumulator, a)
      end
      accumulator
    end
  end

end



