class Array

  def my_inject inital_val=nil, &block
    if inital_val == nil
      accumulator = self[0]
      arry = self.drop(1)
      if accumulator.class == String
        arry.each do |x|
        accumulator = block.call(accumulator, x)
        end 
      else 
       arry.each do |x|
       accumulator = block.call(accumulator, x).to_f
       end
      end
    else
      accumulator = inital_val
      if accumulator.class == String
        self.each do |x|
        accumulator = block.call(accumulator, x)
        end
      else 
       self.each do |x|
       accumulator = block.call(accumulator, x).to_f
      end
    end
    end
    accumulator
  end
end



