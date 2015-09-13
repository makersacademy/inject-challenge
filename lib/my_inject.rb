class MyArray < Array

  def my_inject(initial = self.shift, sym=nil, &block)
    #When there is no block and only one argument, this argument is assigned to initial.
    #but I need it to be symbol.
    #The next 4 lines is the only way I could find to deal with it.
    #Any advise is highly appreciated
    if !block && (initial.is_a? Symbol)
      sym = initial
      initial = self.shift
    end
    if block
      self.each {|i| initial = block.call(initial, i)}
      initial
    elsif sym
      self.each {|i| initial = initial.send(sym, i)}
      initial
    else
      fail "ERROR!"
    end
  end

  def my_inject_rec(initial = self.shift, sym=nil, &block)
    if !block && (initial.is_a? Symbol)
      sym = initial
      initial = self.shift
    end
    if block
      size == 0 ? initial : initial = my_inject_rec(block.call(initial, self.shift), &block)
    elsif sym
      size == 0 ? initial : initial = my_inject_rec(initial.send(sym, self.shift), sym)
    else
      fail "ERROR!"
    end
  end

end
