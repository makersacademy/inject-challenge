class Array

  def injector(input = nil)
    if input.nil?
      start = 1
      num = self.first
    else
      start = 0
      num = input
    end
    self[start..-1].each do |x|
      num = yield(num, x)
    end
    num
  end

end
