class Array

  def diy_inject
    output = self.first
    (self.size - 1).times do |x|
      output = output + self[x+1]
    end
    output
  end

end
