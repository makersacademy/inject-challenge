class Array
  def my_inject sum = nil, symbol = nil, &block
    if sum.is_a? Symbol
      total = self.first
      self.shift
      if sum == :+
        self.each { |x| total = total + x }
      elsif sum == :*
        self.each { |x| total = total * x }
      end
      total
    else
      if sum.nil? && symbol.nil?
        sum = self.first
        self.shift
        self.each { |number| sum = block.call(sum, number) }
        sum
      elsif symbol.nil?
        self.each { |number| sum = block.call(sum, number) }
        sum
      else
        if symbol == :+
          self.each { |x| sum = sum + x }
        elsif symbol == :*
          self.each { |x| sum = sum * x }
        end
        sum
      end
    end
  end
end
