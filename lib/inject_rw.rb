class Array

  def inject_rw(accumulator = self.first, &proc)
    self.shift if accumulator == self.first
    self.each do |element|
      accumulator = proc.call(accumulator, element)
    end
    accumulator
  end

end

# [1,2,3].inject_rw{ |a, e| a + e } # => 6

# [1,2,3].inject_rw{ |a, e| a * e } # => 6

# [1,2,3].inject_rw(10){ |a, e| a + e } # => 16

# [1,2,3].inject_rw(10){ |a, e| a * e } # => 60

# [1,2,3].inject_rw(:+) # => 6

# [1,2,3].inject_rw(10, :+) # => 60

# expect([1,2,3,4].inject_rw() { |sum, n| sum + n}).to eq [1,2,3,4].inject{|sum, n| sum + n}