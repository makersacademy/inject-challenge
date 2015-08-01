
class Array
  def injjject(argument = nil)
      result = argument
      result = yield(result, self[0])
      self[1..-1].each { |element| result = yield(result, element) }
    result
  end
end

 p [1,2,3,4].injjject(0){|result, element| result + element}
