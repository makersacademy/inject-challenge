class Array
  def sandwich_in(n=nil)
    dup_array = self.dup
    if n == nil
      acc = dup_array.shift
    else
      acc = n
    end
    dup_array.each { |el| acc = yield(acc, el) }
    acc
  end
end
