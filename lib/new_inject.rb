class Array
  def new_inject(*args, &block)
    n = 0
    if args.size == 1 && !block_given?
      start = self[0]
      start = yield_with_symbol(self, start, args[0])
    elsif args.size == 2 && !block_given?
      combined = self << args[0]
      start = combined[0]
      start = yield_with_symbol(combined, start, args[1])
    else
      combined = self + args
      start = combined[0]
      return combined if combined.length == 1
      while n < combined.length - 1
        start = yield(start, combined[n + 1])
        n += 1
      end
    end
    return start
  end

  def yield_with_symbol(arr, initial, symbol)
    n = 0
    while n < arr.length - 1
      initial = initial.send(symbol, arr[n + 1])
      n += 1
    end
    return initial
  end
end
