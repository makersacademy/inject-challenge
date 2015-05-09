class Array

  def my_inject(start = self.first, &block)
    acc = 0
    self.each do |e|
      acc = block.call(acc, e)
    end
    return acc
  end

end

[1,2,3].my_inject{|m,e| m * e}


 #inject has an accumulator and an element variable
  # when it is passed just a block the accumulator starts at the beginning of the collection e.g. 1
  # the element then starts at the second point e.g. 2
  # the accumulator then carries forward the result of the block e.g. m + e
  # Remember if the collection is 4 elements long and no stated starting point provided it will only run 3 times because element starts from second position
    #>> why when just put out items starts from the second
    #>> when add a symbol it then starts from 0 to include element? YES
  #3 scenarios to work through