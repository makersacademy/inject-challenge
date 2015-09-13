class Array

  def my_inject(acc=nil)

    if acc == nil
      acc ||= self.first
      self[1..-1].each do |elem|
        acc = yield(acc,elem)
      end
    else
      self[0..-1].each do |elem|
        acc = yield(acc,elem)
      end
    end
    acc
  end
end
