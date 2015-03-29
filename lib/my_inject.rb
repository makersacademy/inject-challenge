class Array
  def my_inject(start_pt = nil, symbol = nil)
    if (start_pt.is_a? Integer) && (symbol.is_a? Symbol)
      acc = start_pt
      each { |element| acc = acc.send(symbol, element) }
      acc
    elsif (start_pt.is_a? Symbol) && (symbol.nil?)
      acc = shift
      each { |element| acc = acc.send(start_pt, element) }
      acc
    elsif (start_pt.nil?) && (symbol.nil?)
      acc = shift
      each { |element| acc = yield(acc, element) }
      acc
    elsif (start_pt.is_a? Integer) && (symbol.nil?)
      acc = start_pt
      each { |element| acc = yield(acc, element) }
      acc
    else
      "Error: please provide the correct arguments"
    end
  end
end