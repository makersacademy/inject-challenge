class Array

  def michael_inject(*args)

    array = self.to_a
    arguments = args.to_a
    symbols = arguments.select {|i| i.instance_of? Symbol}
    numbers = arguments.select {|i| i.instance_of? Fixnum}

    if numbers.length != 0 && symbols.length !=0
      return array.michael_inject(numbers.first){|x,y| x + y} if symbols.first == :+
      return array.michael_inject(numbers.first){|x,y| x - y} if symbols.first == :-
      return array.michael_inject(numbers.first){|x,y| x * y} if symbols.first == :*
      return array.michael_inject(numbers.first){|x,y| x / y} if symbols.first == :/


    end

    if numbers.length !=0 && symbols.length == 0
      total = numbers.first
      self.each {|i| total = yield([total,i])}
      return total

    end


    if numbers.length == 0 && symbols.length != 0
      return array.michael_inject{|x,y| x + y} if arguments.include?(:+)
      return array.michael_inject{|x,y| x - y} if arguments.include?(:-)
      return array.michael_inject{|x,y| x * y} if arguments.include?(:*)
      return array.michael_inject{|x,y| x / y} if arguments.include?(:/)

    end


    if arguments.empty?
      total = self[0]
      sliced = self.slice(1, self.length - 1)
      sliced.each {|i| total = yield([total,i])}
      return total
    end

  end

end
