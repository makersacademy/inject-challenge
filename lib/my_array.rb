# class Array
#   def my_inject starting = 0
#     result ||= starting + self.first
#     self[1..-1].each do |value|
#       result = yield(result, value)
#     end
#     result
#   end
# end

# class Array
#   def my_inject starting = self.first
#     starting ? thing = self : thing = self[1..-1]
#     result = starting
#     thing.each do |value|
#       result = yield(result, value)
#     end
#     result
#   end
# end

class Array
  def my_inject arg = nil, &block
    if !arg.nil?
      my_inject_with_arg arg, &block
    else
      my_inject_without_arg &block
    end
  end

  def my_inject_with_arg arg, &block
    result = arg
    each do |value|
      result = yield(result, value)
    end
    result
  end

  def my_inject_without_arg &block
    result = self.first
    self[1..-1].each do |value|
      result = yield(result, value)
    end
    result
  end
end

# class Array
#   def my_inject args = 0
#     # p 'start'
#     if args
#       # p 'does have args'
#       if args == args.to_sym
#         # p 'args are sym'
#       else
#         # p 'args are not sym'
#         result = args
#         each do |value|
#           result = yield(result, value)
#         end
#         result
#       end
#       # p args
#     else
#       # p 'does not have args'
#       args = self.first
#       result = args
#       self[1..-1].each do |value|
#         result = yield(result, value)
#       end
#       result
#     end
#   end
# end
