class Array

  def new_inject_with_arg arg, &block
    result = arg
    self.each do |element|
      result = block.call(result, element)
    end
    result
  end

  def new_inject_without_arg &block
    copy = self.dup
    result = copy.delete_at(0)
    copy.each do |element|
      result = block.call(result, element)
    end
    result
  end

  def new_inject *arg, &block
    if arg == []
      return self.new_inject_without_arg &block
    else
      return self.new_inject_with_arg arg[0], &block
    end
  end

  def recursion_inject_with_arg arg, &block
    self_copy = self.dup
    result = arg
    element = self_copy.delete_at(0)
    result = block.call(result, element)
    if self_copy == []
      return result
    else
      return self_copy.recursion_inject_with_arg(result, &block)
    end
  end

  def recursion_inject_without_arg &block
    self_copy = self.dup
    result = self_copy.delete_at(0)
    element = self_copy.delete_at(0)
    result = block.call(result, element)
    if self_copy == []
      return result
    else
      return self_copy.recursion_inject_with_arg(result, &block)
    end
  end

  def recursion_inject *arg, &block
    if arg == []
      return self.recursion_inject_without_arg(&block)
    else
      return self.recursion_inject_with_arg(arg[0], &block)
    end
  end

end
