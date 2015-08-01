class Array

  def my_inject &block
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
    accumulator
  end
end




    # string_inject if accumulator.class == String
    # integer_inject if accumulator.class == Fixnum
    # float_inject if accumulator.class == Float

puts ['a','b','c'].my_inject {|memo, x| memo + x}
puts [50,2,3].my_inject {|memo, x| memo / x}