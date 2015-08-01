
class Array
  def injjject(argument = nil)
    if argument
      result = yield(argument, self[0])
      self[1..-1].each { |element| result = yield(result, element) }
    else
      result = yield(self[0], self[1])
      self[2..-1].each { |element| result = yield(result, element) }
    end
    result
  end
end
