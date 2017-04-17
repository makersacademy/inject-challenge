class Array
  def my_inject(x=nil)
    if x == nil
      x ||= self.first
      self[1..-1].each do |y|
        x = yield(x,y)
      end
    else
      self[0..-1].each do |y|
        x = yield(x,y)
      end
    end
    x
  end
end
