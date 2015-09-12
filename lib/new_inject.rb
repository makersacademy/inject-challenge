
class Array
  def inject! *number
    if number == []
      number=[self[0]]
      array=self[1..-1]
    else
      array=self
    end
    array.each_with_index do |element, i|
      if i==0
          array[i] = yield(number[0] , element)
        else
          array[i] = yield([array[i-1], element])
        end
      end
    return array.last
  end
end
