


class Array

  # attr_reader :copy, :result

   def new_inject(*args)

    @arr = self.dup

      if block_given?  

        if args.empty?
          @result = @arr[0]
          @arr.shift
        else
          @result = args[0]
        end

        @arr.each do |element|
          @result = yield(@result, element)
        end

      else
      
        if args.length == 2
          @symbol = args[1]
          @result = args[0]
        else
          @symbol = args[0]
          @result = @arr[0]
          @arr.shift
        end

      @arr.each {|item| @result = @result.send @symbol, item}

    end
    
    @result

   end
 end
     
