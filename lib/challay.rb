class Challay < Array


  def inject(sum=first,method=nil)

    if method == nil && sum != first
      method = sum
      sum = first
    end
    if method == nil
      raise 'no block given' if !block_given? && method == nil
      each do |x|
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




end