class Array

  def add_each_three
    self.map{|obj| obj +3}
  end

  def sum_up
    @memo = [0]
    self.map{|n| @memo << (n + @memo.last)}
    return @memo.last  
  end

end

