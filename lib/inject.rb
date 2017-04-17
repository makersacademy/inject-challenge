class Array

  def my_inject(*args, &block)


    if args[0].is_a? Symbol || args[0] == 0
      acc = self.delete_at(0)
    elsif args == []
      acc = self.delete_at(0)
    else
      acc = args[0]
    end

    if args.length == 2
      self.each {|element| acc = acc.send(args[1],element) }
    elsif args[0].is_a? Symbol
      self.each { |element| acc = acc.send(args[0],element) }
    else
      self.each { |element| acc = block.call(acc,element) }
    end

    acc

  end

end
