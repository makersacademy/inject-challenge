class Array

  def michael_inject(argument = self[0])

    if argument == :+
      return self.michael_inject{|x,y| x + y}
    end

    if argument == :-
      return self.michael_inject{|x,y| x - y}
    end

    if argument == :*
      return self.michael_inject{|x,y| x * y}
    end

    if argument == :/
      return self.michael_inject{|x,y| x / y}
    end
    
    sliced = self.slice(1, self.length - 1)
    total = argument
    sliced.each do |i|
      p total = yield([total,i])
    end

    total


  end
end