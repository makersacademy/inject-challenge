class Array

  def retesh_inject(starter = nil)
    array = self.clone
    starter = array.shift if starter == nil
    array.each do |element|
      starter = yield(starter, element)
    end
    starter
  end

##Recursion - works but not tested

  def rec_inject(starter = nil, &block)
    return starter if self.empty?
    array = self.clone
    starter = array.shift if starter == nil
    argument = array.shift
    return yield(array.rec_inject(starter, &block), argument)
  end


##Inject as an example:- [1, 2, 3, 4].inject(0) { |result, element| result + element }

end