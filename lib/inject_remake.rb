class Array

  def inject_remake(total = self.shift)
      self.each {|element| total = yield total, element}
    total
  end
end
