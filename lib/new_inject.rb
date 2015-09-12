class Array
  def new_inject(result = nil)
    copy = self.dup
    result ||= copy[0]
    copy.each do |element|
      result =  yield(result, element)
    end
    result
  end
end
