class Array


  def my_inject(sum=first,method=nil)

    if method == nil && sum != first
      if !block_given?
      method = sum
      sum = first
      end
    end
    if method == nil
      raise 'no block given' if !block_given? && method == nil
      each do |x|
        if index(x) == 0 && sum != first
          sum = yield sum,x
        end
        if index(x) != 0
          sum = yield sum,x
        else
          sum
        end
      end
    else
      each do |x|
        if index(x) == 0 && sum != first
          sum = x.send(method,sum)
        end
        if index(x) != 0
          sum = x.send(method,sum)
        end
      end
    end
    sum
  end

  def simple_inject(init=nil,&block)
    raise 'no block given' if !block_given?
    if (self.length != 0)
      init==nil ? init = 0 : init
      x = shift
      init = block.call(init,x)
      simple_inject(init,&block)
    else
      return init
    end
  end




end
