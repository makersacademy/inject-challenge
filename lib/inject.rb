class Array 

  def jonject (&block)
      if block_given?
       @a = self[0]
        self[1..self.length].each do |element|
          @a = block.call(@a ,element)
        end
        @a
      end
    end
  end


