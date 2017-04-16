class Array
  def my_inject sum = nil, symbol = nil, &block
    if sum.is_a? Symbol
      total = shift
      each { |x| total = total.send(sum, x) }
      total
    else
      if sum.nil? && symbol.nil?
        sum = shift
        each { |number| sum = block.call(sum, number) }
        sum
      elsif symbol.nil?
        each { |number| sum = block.call(sum, number) }
        sum
      else
        each { |x| sum = sum.send(symbol, x) }
        sum
      end
    end
  end
end
