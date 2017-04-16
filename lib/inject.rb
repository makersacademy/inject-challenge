class Array
 def my_inject(accumulator = nil, operator = nil, &block)

  if operator.nil? && block.nil?
    operator = accumulator
    accumulator = nil
  end

  block = case operator
    when Symbol
      lambda { |acc, value| acc.send(operator, value) }
    when nil
      block
    else
  end

  if accumulator.nil?
    ignore_first = true
    accumulator = first
  end

  index = 0

  each do |element|
    unless ignore_first && index == 0
      accumulator = block.call(accumulator, element)
    end
    index += 1
  end
  accumulator
end
end