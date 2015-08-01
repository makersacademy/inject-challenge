class Array

  def my_inject inital_val=nil, &block # 32 . 
   
    # nil_initial_value.and_string_inject if (initial_val == nil && self[0].class == String)
    # nil_initial_value.and_numbers_inject if (initial_val == nil && self[0].class != String)
    # initial_value.and_string_inject if (initial_val != nil && self[0].class == String)
    # initial_value.and_numbers_inject if (initial_val != nil && self[0] != String)


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

  # def nil_initial_value
  # end

  # def initial_value
  # end

  # def and_string_inject
  # end

  # def and_number_inject
  # end


end




    # string_inject if accumulator.class == String
    # integer_inject if accumulator.class == Fixnum
    # float_inject if accumulator.class == Float

