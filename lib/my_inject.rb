class MyArray < Array

  def my_inject(initial = nil, sym=nil, &block)
    dup = self.dup
    if initial == nil
      initial = dup.shift
      #When there is no block and only one argument,
      #this argument is assigned to initial.
      #but I need it to be symbol.
      #The next 4 lines is the only way I could find to deal with it.
      #Any advise is highly appreciated
    elsif !block && (initial.is_a? Symbol)
      sym = initial
      initial = dup.shift
    end

    if block
      dup.each {|el| initial = block.call(initial, el)}
      initial
    elsif sym
      dup.each {|el| initial = initial.send(sym, el)}
      initial
    else
      fail "ERROR!"
    end
  end

  def my_inject_rec(initial=nil,sym=nil,index=0,&block)

    if initial == nil
      initial = self[0]
      index+=1
    elsif !block && (initial.is_a? Symbol)
      sym = initial
      initial = self[0]
      index+=1
    end

    if block
      inject_with_block_rec(initial, index, &block)
    elsif sym
      inject_with_sym_rec(initial, sym, index)
    else
      fail "ERROR!"
    end
  end

  private

  def inject_with_block_rec(initial,index=0,&block)
    if size == index
      initial
    else
      initial = block.call(initial, self[index])
      inject_with_block_rec(initial,index+1, &block)
    end
  end

  def inject_with_sym_rec(initial, sym, index=0)
    if size == index
      initial
    else
      initial = initial.send(sym, self[index])
      inject_with_sym_rec(initial, sym, index+1)
    end
  end

end
