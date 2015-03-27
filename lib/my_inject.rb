class Array
  def my_inject sum = 0, &block
    self.each { |number| sum = block.call(sum, number) }
    sum
  end
end
