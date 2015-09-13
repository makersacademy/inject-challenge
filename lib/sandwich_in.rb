class Array
  def sandwich_in(n=nil)
    dup_array = self.dup
     n == nil ? acc = dup_array.shift : acc = n
    dup_array.each { |el| acc = yield(acc, el) }
    acc
  end
end
