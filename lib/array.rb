class Array

  def crush_down memo = self.shift, *arg, &block
    if memo.is_a? Symbol
      sym = memo
      memo = self.shift
      self.each { |i| memo = memo.send(sym,i)}
    elsif arg[0]
      self.each { |i| memo = memo.send(arg[0],i)}
    else
      self.each { |i| memo = yield(memo, i ) }
    end
    memo
  end

end