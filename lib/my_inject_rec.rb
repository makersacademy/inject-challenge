class Array
  def my_inject_rec(*args, &block)
    start, accumulator = start_and_accumulator_rec(args)
    if block
      accumulator = run_block_rec(start, accumulator, block)
    else
      accumulator = run_symbol_rec(start, accumulator, args[-1])
    end
    accumulator
  end

  def run_block_rec(start, accumulator, block)
    accumulator = block.call(accumulator, self[start])
    start += 1
    accumulator = run_block_rec(start, accumulator, block) if start < length
    accumulator
  end

  def start_and_accumulator_rec(args)
    start = 1
    accumulator = self[0]
    unless args[0].nil? || args[0].is_a?(Symbol)
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
