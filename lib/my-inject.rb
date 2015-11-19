class Array 

  def my_inject(result, &block)
    result = result
    self.each do |item|
      result = yield(result, item)
    end
    result
  end

end