class Array

  def injector
    array_length = self.length - 1
    result = self[0]
    (1..array_length).each { |x| result = yield result, self[x] }
    result
  end
end