class Array
  def new_inject(block)
    n = 0
    start = self[0]
    return self if self.length == 1
      start = block.call(start, self[n + 1])
      self.slice!(0, 1)
#????????????
    end
    return start
  end
end