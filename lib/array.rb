class Array

  #iterative inject - all inject use cases
  def crush_down memo = self.shift, *arg, &block
    if memo.is_a? Symbol
      operator = memo
      memo = self.shift
      self.each { |i| memo = memo.send(operator,i) }
    elsif arg[0]
      self.each { |i| memo = memo.send(arg[0],i) }
    else
      self.each { |i| memo = yield(memo, i ) }
    end
    memo
  end

  #recursive inject - only for use with blocks
  def recursive_crush_down memo = self.shift, &block
    return memo if self.length == 0
    memo = yield(memo, self.shift)
    recursive_crush_down(memo, &block)
  end

end