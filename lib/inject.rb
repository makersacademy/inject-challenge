class Array
  def my_inject(starting = nil, symbol = nil, &block)
    if block_given?
      if !starting.nil?
        sum = starting
        each { |num| sum = block.call(sum, num) }
        sum
      else
        sum = shift
        each { |num| sum = block.call(sum, num) }
        sum
      end
    else
      if !starting.nil?
        case symbol
        when :+
          sum = starting
          each { |num| sum += num }
          sum
        when :*
          sum = starting
          each { |num| sum *= num }
          sum
        end
      else
        case symbol
        when :+
          sum = shift
          each { |num| sum += num }
          sum
        when :*
          sum = shift
          each { |num| sum *= num }
          sum
        end
      end
    end
  end
end