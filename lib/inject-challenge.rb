
class MyArray < Array

  def attempt_at_inject(*arg)
    copy = self.dup
    result = (arg.empty? ? copy.shift : arg[0])
    copy.each{ |item|result = yield(result, item)}
    return result
  end

  def attempt_at_recursive_inject(i=0, result=nil, &function)
    result ||= self[0] if result == nil
    if i+1 == (self.length)
      return result
    else
      element = self[i+1]
      result = function.call(result, element)
      i+=1
      self.attempt_at_recursive_inject(i, result, &function)
    end
  end

end
