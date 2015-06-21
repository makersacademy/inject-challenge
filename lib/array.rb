class Array

  def michael_inject(argument = 'holder')

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

    if argument != 'holder'
      total = argument
      self.each do |i|
        total = yield([total,i])
      end
      return total
    else
      sliced = self.slice(1, self.length - 1)
      total = self[0]
      sliced.each do |i|
        total = yield([total,i])
      end
      return total
    end
  end
end