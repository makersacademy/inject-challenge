class Array
  def my_inject *args, &block
    result = args.detect { |argument| !(argument.is_a?(Symbol)) } || shift
    symbol = args.detect { |argument| argument.is_a?(Symbol) }
    each { |elem| result = block.call(result, elem) } unless symbol
    if [:*, :/, :+, :-].include?(symbol)
      each { |elem| result = result.send(symbol, elem) }
    else
      fail "Symbol is not one of the 4 basic operators: +, -, *, /"
    end
    result
  end
end