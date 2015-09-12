class Array

  def new_inject *arg, &block
    if arg == []
      copy = self.dup
      result = copy.delete_at(0)
      copy.each do |element|
        result = block.call(result, element)
      end
      result
    else
      result = arg[0]
      self.each do |element|
        result = block.call(result, element)
      end
      result
    end
  end

  def recursion_inject *arg, &block
    if arg == []
      self_copy = self.dup
      result = self_copy.delete_at(0)
      element = self_copy.delete_at(0)
      result = block.call(result, element)
      if self_copy == []
        return result
      else
        return self_copy.recursion_inject result, &block
      end
    else
      self_copy = self.dup
      result = arg[0]
      element = self_copy.delete_at(0)
      result = block.call(result, element)
      if self_copy == []
        return result
      else
        return self_copy.recursion_inject result, &block
      end
    end
  end

end
