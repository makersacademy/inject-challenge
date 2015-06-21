class Array

  def michael_inject(argument = self[0])
    
    sliced = self.slice(1, self.length - 1)
    total = argument
    sliced.each do |i|
      p total = yield([total,i])
    end

    total


  end
end