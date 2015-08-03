class Array
  def owen_inject(&block)
    plus = self.first
    self[1..-1].each do |i|
      plus = yield(plus,i)
    end
    plus
  end
end
