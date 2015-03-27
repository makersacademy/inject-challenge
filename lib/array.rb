class Array
  def gusject(*args, &block)
    args << block unless block.nil?
    case args.length
    when 2
      sum = args[0]
      if block_given?
        each { |el| sum = block.call(sum, el) }
      else
        each { |el| sum = sum.send(args[1], el) }
      end
    when 1
      temp_array = dup
      sum = temp_array.shift
      if block_given?
        temp_array.each { |el| sum = block.call(sum, el) }
      else
        temp_array.each { |el| sum = sum.send(args[0], el) }
      end
    end
    sum
  end
end
