# class Array
#   def my_inject(arg = nil, &block)
#     if arg.nil?
#       my_inject_without_arg &block
#     else
#       if arg.is_a? Symbol
#         my_inject_with_symbol symbol, &block
#       else
#         my_inject_with_arg arg, &block
#       end
#     end
#   end
#
#   def my_inject_with_arg arg, &block
#     result = arg
#     each do |value|
#       result = yield(result, value)
#     end
#     result
#   end
#
#   def my_inject_without_arg &block
#     result = self.first
#     self[1..-1].each do |value|
#       result = yield(result, value)
#     end
#     result
#   end
#
#   def my_inject_with_symbol symbol, &block
#     # case symbol
#   end
# end

class Array
  def my_inject(arg = nil, arg_sym = nil, &block)
    if arg.nil?
      my_inject_without_arg(&block)
    else
      if arg_sym.nil?
        my_inject_with_arg(arg, &block)
      else
        my_inject_with_symbol(arg_sym, &block)
      end
    end
  end

  def my_inject_with_arg(arg)
    result = arg
    each do |value|
      result = yield(result, value)
    end
    result
  end

  def my_inject_without_arg
    result = self.first
    self[1..-1].each do |value|
      result = yield(result, value)
    end
    result
  end

  def my_inject_with_symbol(arg_sym, &block)
    # case symbol
  end
end
