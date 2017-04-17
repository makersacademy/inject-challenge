class Array

  def inject_it(array, result)
    array.each do |item|
      result = yield(result, item)
    end
    result
  end

end
