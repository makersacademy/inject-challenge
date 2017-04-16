class MyArray < Array
  def initialize(array)
    @array = array
  end

  def inject(arg1 = nil, arg2 = nil, &block)
    if arg1.is_a? Symbol
      return inject_symbol(arg1)
    elsif arg2.is_a? Symbol
      return inject_symbol_with_initial(arg1, arg2)
    elsif arg1.nil?
      return inject_block(&block)
    else
      return inject_block_with_initial(arg1, &block)
    end
  end

  private

  attr_reader :array

  def array_shifted!
    array.drop(1)
  end

  def inject_symbol(symbol)
    memo = array.first
    array_shifted!.each { |value| memo = memo.send(symbol, value) }
    memo
  end

  def inject_symbol_with_initial(symbol, initial)
    memo = symbol
    array.each { |value| memo = memo.send(initial, value) }
    memo
  end

  def inject_block(&block)
    memo = array.first
    array_shifted!.each { |value| memo = block.call(memo, value) }
    memo
  end

  def inject_block_with_initial(initial, &block)
    memo = initial
    array.each { |value| memo = block.call(memo, value) }
    memo
  end
end

