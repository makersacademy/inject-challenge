class Array

  def add_each_three
    self.map{|obj| obj +3}
  end

  def sum_up
    @memo = [0]
    self.map{|n| @memo << (n + @memo.last)}
    return @memo.last  
  end

  def my_sum_up
    memo = 0
    index = 0
    until index == self.size
      memo = self[index] + memo
      index += 1
    end
    memo
  end

  def get_proc_inside(&proc)
    proc.call(2, 2)
  end

  def my_inject(memo=nil, &proc)
    array = self
    memo ||=array.shift
    array.size.times {memo = proc.call(memo,array.shift)}
    memo
  end
  
  def injected
    memo + item
    
  end

end

