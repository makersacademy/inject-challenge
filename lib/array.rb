class Array
  def inject_alt(arg = nil, &block)
    output = arg || first
    array = (arg.nil? ? self[1..-1] : self)
    array.each { |element| output = block.call(output, element) }
    output
  end

  def inject_alt2(arg = nil, &block)
    output = (arg.nil? ? first : block.call(arg, first))
    self.length == 1 ? output : self[1..-1].inject_alt2(output, &block)
  end
end
