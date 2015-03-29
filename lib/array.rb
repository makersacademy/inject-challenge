class Array
  def my_inject *args, &block
    result = args.detect { |argument| !(argument.is_a?(Symbol)) } || shift
    symbol = args.detect { |argument| argument.is_a?(Symbol) }
    each { |elem| result = result.send(symbol, elem) } if symbol
    each { |elem| result = block.call(result, elem) } unless symbol
    result
  end
end

#   def my_inject *args, &block
#     fail 'Too many arguments' if args.length > 2
#     if args.length == 2
#       inject_two_arguments(*args)
#     elsif args.length == 0
#       inject_no_arguments(&block)
#     else
#       inject_one_argument(args.first, &block)
#     end
#   end

#   private

#   def inject_two_arguments starting, symbol
#     fail 'First of two arguments cannot be a symbol' if starting.is_a?(Symbol)
#     fail '2nd of two arguments must be a symbol' unless symbol.is_a?(Symbol)
#     result = starting
#     each { |elem| result = result.send(symbol, elem) }
#     result
#   end

#   def inject_no_arguments &block
#     result = shift
#     each { |num| result = block.call(result, num) }
#     result
#   end

#   def inject_one_argument argument, &block
#     if argument.is_a?(Symbol)
#       inject_one_argument_symbol argument
#     else
#       inject_one_argument_starting argument, &block
#     end
#   end

#   def inject_one_argument_symbol symbol
#     result = shift
#     each { |elem| result = result.send(symbol, elem) }
#     result
#   end

#   def inject_one_argument_starting starting, &block
#     result = starting
#     each { |num| result = block.call(result, num) }
#     result
#   end
# end