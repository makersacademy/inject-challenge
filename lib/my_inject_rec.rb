class Array
  def my_inject_rec(*args)
    start, accumulator = start_and_accumulator_rec(args)
    if block_given?
      (start...length).each do |num|
        accumulator = yield(accumulator, self[num])
      end
    else
      accumulator = run_symbol_rec(start, accumulator, args[-1])
    end
    accumulator
  end

  def start_and_accumulator_rec(args)
    start = 1
    if args[0].nil? || args[0].is_a?(Symbol)
      accumulator = self[0]
    else
      start = 0
      accumulator = args[0]
    end
    [start, accumulator]
  end

  def run_symbol_rec(start, accumulator, symbol)
    accumulator = accumulator.send(symbol, self[start])
    start += 1
    accumulator = run_symbol_rec(start, accumulator, symbol) if start < length
    accumulator
  end
end
