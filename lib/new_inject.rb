class Array
  def new_inject(*args)
    copy = self.dup
    symbol = args.delete(args.select{|a|a.is_a?(Symbol)}.first)
    start = args.first || copy.shift
    copy.each {|element| start = yield(start, element)} if block_given?
    copy.each {|element| start = start.send(symbol, element)} if symbol
    start
  end
end
