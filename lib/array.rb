class Array
  def gusject
    sum = 0
    if block_given?
      self.each do |el|
        sum = yield(sum, el)
      end
    end
    sum
  end
end
