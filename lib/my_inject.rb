class Array
  def my_inject(start_or_sym = nil, symbol = nil)
    if start_or_sym.nil?
      accumulator = self[0]
      drop(1).each { |element| accumulator = yield(accumulator, element) }
      accumulator
    else
      if start_or_sym.class.name == "Symbol"
        accumulator = self[0]
        drop(1).each do |element|
          accumulator = accumulator.send(start_or_sym, element)
        end
        accumulator
      else
        if start_or_sym && symbol
          accumulator = start_or_sym
          each { |element| accumulator = accumulator.send(symbol, element) }
          accumulator
        elsif start_or_sym.class.name != "Symbol"
          accumulator = start_or_sym
          each { |element| accumulator = yield(accumulator, element) }
          accumulator
        else
          fail 'This should not have happened!'
        end
      end
    end
  end
end
