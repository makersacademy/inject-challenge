class Array
  def my_inject(starting = nil, symbol = nil)
    starting.nil? ? result = self[0] : result = starting
    each { |num| result = yield result, num } if block_given?
    if !symbol.nil?
      each { |num| result = result.send symbol, num }
    elsif !symbol.nil? && starting.nil?
      each { |num| result = result.send symbol, num }
    end
    result
  end
end

p [1, 2, 3].my_inject { |result, number| result + number }
p [1, 2, 3].my_inject { |result, number| result * number }
p [1, 2, 3].my_inject(10) { |result, number| result + number }
p [1, 2, 3].my_inject(0, :+)
p [1, 2, 3].my_inject(:*) # 1.+(2)

