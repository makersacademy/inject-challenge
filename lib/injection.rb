class Array

  def injection(num = 0, &block)
    self.each do |item|
      num = yield(num,item)
    end
  num
  end

end