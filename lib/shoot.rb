class ModifiedArray < Array

  def shoot accumulator=0
    #if accumulator == :+
    size.times { |el| accumulator = yield accumulator, self[el] } if block_given?
    #   c= 0
    #   until size == c
    #     accumulator = yield accumulator, self[c]
    #     c += 1
    #   end
    # end
    accumulator
  end

end
