class Array
  def my_inject starting = nil, symbol = nil, &block
    if block_given?
      if !starting.nil?
        sum = starting
        each { |num| sum = yield(sum, num) }
        sum
      else
        sum = shift
        each { |num| sum = yield(sum, num) }
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
      elsif
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

  # if symbol.is_a? Symbol
  #     sum = self.first
  #     self.shift
  #     case symbol
  #     when :+
  #       self.each { |num| sum += num }
  #       sum
  #     when :*
  #       self.each { |num| sum *= num }
  #       sum