class Array

  def alex_inject(result = nil)
    duplicate = self.dup
    if result == nil; result = duplicate[0]; duplicate.delete_at(0); end

    duplicate.each do |element|
      result = yield(result, element)
    end
    result
  end

end









# (result = nil, i = 0)
#   # if i == self.length
#   #   result
#   # else
#   #   result = yield(result)
#   #   alex_inject(result, i+1)
#   # end
