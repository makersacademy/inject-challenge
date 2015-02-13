


class Array

  # attr_reader :copy, :result

  # def new_inect(*args, &block)

  #   block_given?
  #   @arr = self.dup
    


  #   result

  # end

  # def block_inject(*args)
  #   yield(result, element)
  # end




  def symbol_inject(*args)

    @arr = self.dup

    if args.length == 2
      @symbol = args[1]
      @result = args[0]
    else
      @symbol = args[0]
      @result = @arr[0]
      @arr.shift
    end

    @arr.each {|item| @result = @result.send @symbol, item}
    @result

  end



  # # check if the method is receive a symbol or nothing
  # def symbol_in_args?(args)
  #   args[0].is_a?(Symbol)
  # end

  # def empty_args?(args)
  #   args.empty?
  # end

end