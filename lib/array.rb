class Array

  def mick_inject(initial = nil, &block)
    return nil if count == 0
    if all?{ |a| !a }
      accumulator = initial
      each do |a|
        accumulator = block.call(accumulator, a)
      end
      return accumulator
    end

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

array = [nil,nil,nil,nil]

p array.count
p array.inject{|acc, x| acc = !x}
p array.mick_inject{|acc, x| acc = !x}
