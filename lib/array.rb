class Array
  def my_inject starting = nil, symbol = nil
    starting.nil? ? result = self[0] : result = starting
    if starting.is_a? Symbol
      result = self[0]
      each { |num| result = result.send starting, num }
    elsif symbol.is_a? Symbol
      each { |num| result = result.send symbol, num }
    else
      each { |num| result = yield result, num } if block_given?
    end
    result
  end
end

p [1, 2, 3].my_inject { |result, number| result + number }
p [1, 2, 3].my_inject { |result, number| result * number }
p [1, 2, 3].my_inject(10) { |result, number| result + number }
p [1, 2, 3].my_inject(10, :*)
p [1, 2, 3].my_inject(:+) # 1.+(2)
