class Array
  def my_inject(*args)
    start, accumulator = start_and_accumulator(args)
    if block_given?
      (start...length).each do |num|
        accumulator = yield(accumulator, self[num])
      end
    else
      accumulator = run_symbol(start, accumulator, args[-1])
    end
    accumulator
  end

  def start_and_accumulator(args)
    start = 1
    if args[0].nil? || args[0].is_a?(Symbol)
      accumulator = self[0]
    else
      start = 0
      accumulator = args[0]
    end
    [start, accumulator]
  end

  def run_symbol(start, accumulator, symbol)
    (start...length).each do |num|
      accumulator = accumulator.send(symbol, self[num])
    end
    accumulator
  end
end
puts [1, 4, 5].my_inject(:+)
