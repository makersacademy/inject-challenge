class Array

  def injekt(*args, &block)

    block = parse_arguments(args, block, block_given?)
    self.unshift(args.pop) unless args.empty?

    do_injekt_iteration(self, block)
    # do_injekt_recursion(self, block)

  end

  private

  def parse_arguments(args, block, block_flag)

    len = args.length
    message = "wrong number of arguments (#{len} for 0..2)"
    fail(ArgumentError, message) if len >= 3

    if !block_flag || len == 2
      return proc { return } if args.empty?
      sym = args.pop
      message = "#{sym} is not a symbol nor a string"
      fail(TypeError, message) unless sym.is_a?(Symbol) || sym.is_a?(String)
      block = proc { |memo, obj| memo.send(sym, obj) }
    end
    block

  end

  def do_injekt_iteration(array, block)
    memo = array.shift
    until array.empty?
      obj = array.shift
      memo = block.call(memo, obj)
    end
    memo
  end

  # def do_injekt_recursion(array, block)
  #   return array.first if array.length <= 1
  #   obj = array.pop
  #   block.call(do_injekt_recursion(array, block), obj)
  # end

end
