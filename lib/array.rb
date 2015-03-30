class Array
  def my_inject starting = nil, symbol = nil
    result = starting.nil? ? self[0] : starting
    return method_with_starting starting if starting.is_a? Symbol
    return method_with_symbol if symbol.is_a? Symbol
    method_with_block
  end

  private

  attr_reader :result, :symbol

  def method_with_starting
    result = self[0]
    drop(0).each { |num| result = result.send starting, num }
  end

  def method_with_symbol
    drop(0).each { |num| result = result.send symbol, num }
  end

  def method_with_block
    drop(0).each { |num| result = yield result, num }
  end
end
