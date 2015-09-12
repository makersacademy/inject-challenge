
class Array
  def iterative_inject! *number
    number = [self.shift] if number == []
    self.each_with_index do |element, i|
      i == 0 ? args = [number[0], element] : args = [self[i-1], element]
      self[i] = yield args
    end
    self.last
  end

  def recursive_inject! *number, &block
    self.unshift number[0] unless number == []
    while self.length>1 
      self[1] =  block.call [self[0], self[1]]
      self.shift
      self.recursive_inject!(&block)
    end
    self[0]
  end
end
