
class Array
  def injjject(argument = nil)
    if argument != nil
      result = yield(argument, self[0])
      self[1..-1].each do |x|
        result += yield(argument, x)
      end
    else
      result = yield(self[0], self[1])
      self[1..-2].each do |x|
        result += yield(self[0], x)
      end
    end
    result
  end
end

 p [1,2,3,4,5,6].injjject{|result, element| result + element}
