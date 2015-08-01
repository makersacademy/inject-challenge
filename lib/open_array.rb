class Array

  def method_missing(method, setter = 0, &block)
    if method == :my_inject
      self.unshift(setter) if setter != 0
      self.my_injection &block
    else
      super
    end
  end

  def my_injection &block
    return self[0] unless self.count > 1
    self[1] = yield(self[0], self[1])
    self[1..-1].my_injection &block
  end
end


p [2,3,4].inject { |sum, next_number | sum + next_number }
p [2,3,4].my_inject { |sum, next_number | sum + next_number }

#test = [1,2,3,4]

test_array = [2,3,4]
test_array.inject { |sum, next_number | sum + next_number }

p [2,3,4].my_inject(3) { |sum, number| sum - number }

test_array = [5,5,5]

p test_array.inject(8) { |sum, next_number | sum + next_number }
p test_array.my_inject(8) { |sum, next_number | sum + next_number }

#p test[1..-1]

array = [1, 2, 3, 4, 5, 6].inject([]) do |result, element|
  result << element.to_s if element % 2 == 0
  result
end

p array


