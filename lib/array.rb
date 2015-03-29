class Array
  def my_inject starting = nil, symbol = nil
    starting.nil? ? result = self[0] : result = starting
    if starting.is_a? Symbol
      result = self[0]
      each { |num| result = result.send starting, num }
    elsif symbol.is_a? Symbol
      each { |num| result = result.send symbol, num }
    else
      each { |num| result = yield result, num }
    end
    result
  end
end

