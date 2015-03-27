


class Array

  def new_inject(number = nil)

    arr = self.dup

    if number == nil
      result = arr[0]
      arr.shift
    else
      result = number
    end
    
    arr.each { |element| result = yield(result, element)}
    result

  end

end
