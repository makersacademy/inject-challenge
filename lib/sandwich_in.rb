class Array
  def sandwich_in(n)
  acc = n
  self.each { |el| acc += el }
  acc
  end
end
