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

end
