class Array

  def double_inject(first_value, &block)
    new_value = first_value
    each do |element|
      block.call(first_value, element)
      new_value += element
    end
    new_value
  end
end
