class Array

  def mattInject(acc = 0, &block)
      self.each do |item|            # => [1, 2, 3, 4]
        acc = block.call(acc, item)  # => 1, 3, 6, 10
      end                            # => [1, 2, 3, 4]
      acc                            # => 10
  end
end

#
array = [1,2,3,4]  # => [1, 2, 3, 4]
# array.mattInject {|sum,num| num+sum}  # => 31
# array.mattInject{|sum,num|num*sum}    # => 6720

array.mattInject(0){|acc,e|acc+e}  # => 10
