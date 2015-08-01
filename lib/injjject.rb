
class Array
  def injjject(argument = nil)
    if argument
      result = argument
      result = yield(result, self[0])
      self[1..-1].each { |element| result = yield(result, element) }
    else
      result = self[0]
      result = yield(result, self[1])
      self[2..-1].each { |element| result = yield(result, element) }
    end
    result
  end
end
