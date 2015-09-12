class Array

  def new_inject(&block)
    result = []
    self.each do |element|
      result << block.call(element)
    end
    result
  end

end

# ary1 = [1,2,3,4]
# array2 = ary1.new_inject{|x| x*x}
# p array2
