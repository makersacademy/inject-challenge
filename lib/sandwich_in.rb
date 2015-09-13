class Array
  def sandwich_in(n=nil)
    array_copy = self.dup
    n.nil? ? acc = array_copy.shift : acc = n
    array_copy.each { |el| acc = yield(acc, el) }
    acc
  end
end
