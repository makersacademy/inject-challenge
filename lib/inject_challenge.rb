class Array

  def injekt
    sum = 0
    self.each do |n|
      sum += n
    end
    sum
  end

end