class Array

  def mick_inject(initial = nil, &block)
    if initial == nil
      initial = self[0]
      shift
      mick_inject(initial, &block)
    else
      accumulator = initial
      each do |a|
        accumulator = block.call(accumulator, a)
      end
    end
    accumulator
  end

end


# p [1,2,3,4].inject{|sum,a| sum + a}

# p [1,2,3,4].mick_inject{|sum,a| sum + a}
