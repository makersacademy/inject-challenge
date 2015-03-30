class Array
  def my_inject arg = nil, arg_sym = nil, &block
    copy = self.dup
    arguments = argument_hash(copy, arg, arg_sym)
    copy.each { |el| arguments[:total] =  arguments[:total].send(arguments[:method], el) }  if arguments[:method]
    copy.each { |el| arguments[:total] =  block.call(arguments[:total], el) } unless  arguments[:method]
    arguments[:total]
  end

  private

  def argument_hash copy, arg, arg_sym
    return {total: arg, method: arg_sym} if arg_sym
    return {total: copy.shift, method: arg } if arg.is_a? Symbol
    {total: (arg ? arg : copy.shift)}
  end

end
