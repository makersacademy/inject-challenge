
class MyArray < Array

  def attempt_at_inject(*arg)
    copy = self.dup
    result = (arg.empty? ? copy.shift : arg[0])
    copy.each{ |item|result = yield(result, item)}
    return result
  end

  def attempt_at_recursive_inject(result=nil, &function)
    result ||=  (result == nil ? self.shift : init)
    if (self.length)==0
      return result
    else
      element = self.shift
      result = function.call(result, element)
      self.attempt_at_recursive_inject(result, &function)
    end
  end

end
