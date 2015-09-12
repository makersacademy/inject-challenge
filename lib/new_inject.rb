
class Array
  def inject! *number
    number = [self.shift] if number == []
    self.each_with_index do |element, i|
      i == 0 ? args = [number[0], element] : args = [self[i-1], element]
      self[i]=yield args
    end
    self.last
  end
end
