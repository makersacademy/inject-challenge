class Array
  def my_inject(arg1 = nil, symbol = nil)
    arg1.nil? || arg1.is_a?(Symbol) ? memo = self[0] : memo = arg1
    if arg1.nil?
      drop(1).each { |element| memo = yield(memo, element) }
      memo
    else
      if arg1.is_a?(Symbol)
        symbol_injector(arg1, memo)
      else
        if arg1 && symbol
          each { |element| memo = memo.send(symbol, element) }
          memo
        elsif arg1.is_a?(Fixnum)
          each { |element| memo = yield(memo, element) }
          memo
        end
      end
    end
  end

  private

  def symbol_injector(symbol, memo)
    drop(1).each { |element| memo = memo.send(symbol, element) }
    memo
  end
end
